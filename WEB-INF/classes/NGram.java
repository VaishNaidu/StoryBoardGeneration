/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Storyboard;

import java.util.*;
import java.io.*;


/**
 * Generate random text using n-gram model.
 *
 * @author Robert C. Duvall
 */
public class NGram
{
    // like a dice, generates a series of random numbers
    private static final Random ourGenerator = new Random();


    /**
     * Read a file into a string.
     *
     * @return returns a string containing all the words in the file
     *         separated by a space
     */
    public String readFile (Scanner input)
    {
        final String SPACE = " ";
        String result = "";

        while (input.hasNext())
        {
            result += input.next() + SPACE;
        }

        return result;
    }

    /**
     * Generates random text that is similar to the given reference text.
     *
     * @requires ngram > 0
     * @return returns string whose length is numLetters of randomly selected 
     *         characters based on picking representive characters that follow
     *         each ngram characters 
     */
    public String makeNGram (String referenceText, int ngram, int numLetters)
    {
        String predictor = getRandomSubstring(referenceText, ngram);
        String result = predictor;

        for (int k = 0; k < numLetters - ngram; k++)
        {
            // TODO: get all characters that immediately follow predictor
            // TODO: pick one character randomly and update predictor
        }

        return result;
    }

    /**
     * Choose a random substring of the given string.
     *
     * @requires subSize <= s.length()
     * @return random substring of s whose length is subSize
     */
    String getRandomSubstring (String s, int subSize)
    {
        // TODO: choose random substring from s
        return s.substring(0, subSize);
    }

    /**
     * Find all characters that immediately follow toFind in the given string.
     *
     * @return a string containing each character that immediately
     *         follows toFind in s
     */
    String getFollowingCharacters (String s, String toFind)
    {
        String result = "";
        int last = s.length() - toFind.length() - 1;

        // TODO: get each character following toFind in s and add to result

        return result;
    }


    /**
     * Where the program starts.
     */
    public static void main (String[] args)
    {
        final String DATA_FILE = "data/poe.txt";
        final int NUM_PREFIX = 5;
        final int RANDOM_TEXT_LENGTH = 256;

        try
        {
            NGram model = new NGram();

            // create reference text
            int n = NUM_PREFIX;
            String referenceText = "";
            if (args.length > 0)
            {
                n = Integer.parseInt(args[0]);
                for (int k = 1; k < args.length; k++)
                {
                    referenceText += model.readFile(new Scanner(new File(args[k])));
                }
            }
            else
            {
                referenceText = model.readFile(new Scanner(new File(DATA_FILE)));
            }

            // generate random text to varying degrees of accuracy
            System.out.println(n + "-gram");
            for (int k = 0; k <= n; k++)
            {
                System.out.println(model.makeNGram(referenceText, n, RANDOM_TEXT_LENGTH));
                System.out.println("--------");
            }
        }
        catch (IOException e)
        {
            System.out.println("Error reading file " + DATA_FILE);
            System.out.println(e);            
        }
    }
}
