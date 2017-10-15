

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import opennlp.tools.sentdetect.SentenceDetectorME;
import opennlp.tools.sentdetect.SentenceModel;
import opennlp.tools.tokenize.TokenizerME;
import opennlp.tools.tokenize.TokenizerModel;
import opennlp.tools.util.InvalidFormatException;


/**
 * Servlet implementation class TextSum
 */
@WebServlet("/TextSum")
public class TextSum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public static String[] splitToSentences(String content)
	{
		
		String[] sent = sentenceDetect.sentDetect(content);
		return sent;
	}
	/*
//Text into paragraphs
	public static String[] splitToParagraphs(String content)
	{
		final String PARAGRAPH_SPLIT_REGEX="(?m)(?=^\\s{4})";
    	String[] mystring = content.split(PARAGRAPH_SPLIT_REGEX);
		
		return mystring;
	}
	*/
	public static <T> Collection <T> intersect (Collection <? extends T> a, Collection <? extends T> b)
	{
	    Collection <T> result = new ArrayList <T> ();

	    for (T t: a)
	    {
	        if (b.remove (t)) result.add (t);
	    }
        for (T t: result)
        	System.out.println("==============="+t.toString());
	    return result;
	}
	
//Computing the intersection(common words) between two sentences
	public static float sentenceIntersection (String sentence1, String sentence2)
	{
		String[] sent1 = tokenizer.tokenize(sentence1);
		String[] sent2 = tokenizer.tokenize(sentence2);
		
		for(String j: sent1)
			System.out.println(j);
		
		if (sent1.length + sent2.length == 0)
			return 0;
		
		
		List<String> intersectArray = (List<String>) intersect(new ArrayList<String>(Arrays.asList(sent1)),new ArrayList<String>(Arrays.asList(sent2)));
		
		float result = ((float)(float)intersectArray.size() / ((float)Math.log(sent1.length) + ((float)Math.log(sent2.length))));
		
		return result;
	}
	
	public static String[] intersection(String[] sent1, String[] sent2)
	{
		if(sent1 == null || sent1.length == 0 || sent2 == null || sent2.length == 0)
			return new String[0];
		
		List<String> sent1List = new ArrayList<String>(Arrays.asList(sent1));
		List<String> sent2List = new ArrayList<String>(Arrays.asList(sent2));
			
		sent1List.retainAll(sent2List);
		
		String[] intersect = sent1List.toArray(new String[0]);
		
		return intersect;
	}
	/*
	public static String formatSentence(String sentence)
	{
		return sentence;
	}

	public static String getBestsentenceFromParagraph(String paragraph)
	{
		String[] sentences = splitToSentences(formatSentence(paragraph));
		System.out.println("sentences::::::::");
		
		for(String j: sentences)
			System.out.println(j);
		
		if(sentences == null || sentences.length <= 2)
			return "";
		
		float[][] intersectionMatrix = getSentenceIntersectionMatrix(sentences);
		
		float[] sentenceScores = getSentenceScores(sentences, intersectionMatrix);
		
		return getBestSentence(sentences,  sentenceScores);
	}*/
	public static float[][] getSentenceIntersectionMatrix(String[] sentences)
	{
		
		int n = sentences.length;
		
		float[][] intersectionMatrix= new float[n][n];
		
		for(int i = 0; i< n; i++)
		{
			for(int j = 0; j< n; j++)
			{
				try
				{
					if(i == j)
						continue;
					
				intersectionMatrix[i][j] = sentenceIntersection(sentences[i], sentences[j]);	
				}
				catch(Exception e)
				{
					System.out.println(e.getMessage());
				}
			}
		}
		
		//Build the sentence dictionary
		//The score of a sentence is the sum of all its intersections
		
		return intersectionMatrix;
	}
	
	public static float[] getSentenceScores(String[] sentences, float[][] scores)
	{
		
		float d=(float) 0.85;
		float[] scoresReturn = new float[sentences.length];
		for(int s=0;s<sentences.length;s++)
			scoresReturn[s]=1;
		
		for(int it=0;it<20;it++)
		{
		for(int i=0; i<sentences.length; i++)
		{
			float in=0;
			for(int j=0;j<scores[i].length;j++)
			{
				float out = 0;
				for(int k=0; k<scores[i].length; k++)
				{
					out += scores[j][k];				
				}
				in += scores[j][i]/out*scoresReturn[j];
				
			}
			scoresReturn[i] = (1-d)+d*in;
		}
		}
		return scoresReturn;
	}
	
	public static String getBestSentence(String[] sentences, float[] scores)
	{	
		String answer="";
		int indexes[]=new int[sentences.length/3];
		
		for(int i=0;i<(sentences.length/3);i++)
		{
			int mi=getMaxIndex(scores);
			indexes[i]=mi;
			scores[mi]=-1;
			
		}
			
		for(int i=0;i<indexes.length-1;i++)
		{
			for(int j=i+1;j<indexes.length;j++)
			{
				if(indexes[j]<indexes[i])
				{
					int x=indexes[i];
					indexes[i]=indexes[j];
					indexes[j]=x;
				}
			}		
		}
		
		for (int i = 0; i < indexes.length; i++) {
			answer=answer+sentences[indexes[i]];
		}
		
		return answer;
		
	}
	
	public static int getMaxIndex(float[] array)
	{
		int maxIndex = 0;
		float max = -1;
		for(int i=0; i<array.length; i++)
		{
			if(array[i]>max)
			{
				max = array[i];
				maxIndex = i;
			}
			
		}
		return maxIndex;
	}
	
	public static TokenizerME tokenizer;
	public static SentenceDetectorME sentenceDetect;
	//public static SummaryTool Instance;
	
	public TextSum()
	{
		initialize();
	}
	
	public void initialize()
	{
		InputStream sentenceModelIS = this.getClass().getResourceAsStream("Data/en-sent.bin"); //new FileInputStream("src/Data/en-sent.bin");
		SentenceModel model;
		try 
		{	
			model = new SentenceModel(sentenceModelIS);
			sentenceDetect = new SentenceDetectorME(model);
		} catch (InvalidFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		InputStream tokenizerModelIS = this.getClass().getResourceAsStream("Data/en-token.bin"); //new FileInputStream("src/Data/en-token.bin");
		TokenizerModel tokenModel;
		try 
		{	
			tokenModel = new TokenizerModel(tokenizerModelIS);
		    tokenizer = new TokenizerME(tokenModel);
		} catch (InvalidFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		long startTime=System.currentTimeMillis();
		
		String title = "this is a title";
		String content = "";
		
		//Instance = new SummaryTool();
		
		 
			 
			 content = request.getParameter("area1");
			 
		 
		
		StringBuilder summary = new StringBuilder();
		String[] sentences= splitToSentences(content);
		
		
		
		float[][] intersectionMatrix = getSentenceIntersectionMatrix(sentences);
		
		for(int i=0;i<intersectionMatrix.length;i++)
		{
			for(int j=0;j<intersectionMatrix[i].length;j++)
				System.out.print("  "+intersectionMatrix[i][j]);
			System.out.println();
		}
		float[] sentenceScores = getSentenceScores(sentences, intersectionMatrix);
		System.out.println("*******************Rank*************************");
		for(int j=0;j<sentenceScores.length;j++)
			System.out.print("  "+sentenceScores[j]);
		String sum=getBestSentence(sentences, sentenceScores);
		System.out.println();
		System.out.println(sum);
		
		javax.servlet.http.HttpSession s=request.getSession();
		s.setAttribute("summary", sum);
		s.setAttribute("content", content);
		long endTime=System.currentTimeMillis();
		long runTime=endTime-startTime;
		NumberFormat f=new DecimalFormat("#0.00000");
		System.out.println("content length:"+sentences.length);
		System.out.println("Ex Time:"+f.format(runTime/1000d)+ "seconds");
		response.sendRedirect("GUI.jsp");
		
	}

	}


