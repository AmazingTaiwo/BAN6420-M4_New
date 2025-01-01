# BAN6420-M4_New
BAN6420 Module 4 Assignment


Introduction
  The provided Python script handles the extraction, cleaning, exploration, visualization, and saving of Netflix data. Here's a breakdown of each section and what the script does:

 1. Import Libraries:
   - Libraries like `zipfile`, `os`, `pandas`, `numpy`, `seaborn`, `matplotlib.pyplot`, and `shutil` are imported to handle tasks like file extraction, data manipulation, visualization, and file management.

 2. Define Paths:
   - The script sets up paths to the folder where extracted files will be saved (`extracted_folder_path`) and the location of the ZIP file (`zip_file_path`).

 3. Extract ZIP File:
   - The `zipfile.ZipFile` method extracts the contents of the ZIP file to the specified folder (`Netflix_shows_movies/`). 
   - If the folder doesn't exist, it is created using `os.makedirs()`.

 4. Rename Extracted CSV File (if necessary):
   - The script checks the files in the extracted folder and renames the CSV file (if there’s only one CSV) to `Netflix_shows_movies.csv`.

 5. Load Dataset:
   - The CSV file (`Netflix_shows_movies.csv`) is read into a pandas DataFrame `df`. 

 6. Check for Missing Values:
   - The script checks for any missing values in the dataset using `df.isnull().sum()`. This shows which columns have missing data.

 7. Split and Count Genres:
   - The `listed_in` column, which contains genres, is split into individual genres by commas. This is done using `str.split(',')`, and then the `explode()` method converts it into individual rows. 
   - After cleaning (removing spaces), it counts the occurrences of each genre using `value_counts()`.

 8. Data Exploration:
   - The script uses `describe()` to generate statistics for numerical columns.
   - The `dtypes` method shows the data types of all columns.
   - It also examines the unique values in categorical columns such as `listed_in` and `type`.
   - Descriptive statistics of the `rating` column are displayed.

 9. Data Cleansing (listed_in):
   - The `listed_in` column is cleaned by converting it into a list of genres and removing any leading/trailing spaces.
   - The DataFrame is exploded into individual rows for each genre, and empty genres are filtered out.

 10. Data Visualization:
   - A bar plot is created to visualize the most watched genres using Seaborn (`sns.barplot()`). This plot shows the count of each genre.
   - The `rating` column is converted to numeric, and a histogram is plotted for the distribution of ratings using Seaborn's `histplot()` function.

 11. Save Plot as PNG:
   - The bar plot showing the most watched genres is saved as a PNG file (`most_watched_genres.png`) using `plt.savefig()`.

 12. Save Outputs:
   - A directory (`Netflix_analysis_output/`) is created to store the output files, including the plot.
   - The generated PNG plot is copied into this output directory using `shutil.copy()`.
   - The entire output directory is then compressed into a ZIP file (`Netflix_analysis.zip`) using `shutil.make_archive()`.

 Summary of Actions:
1. Extracts a ZIP file containing Netflix data.
2. Renames the extracted CSV to `Netflix_shows_movies.csv`.
3. Loads the CSV file into a pandas DataFrame and checks for missing values.
4. Cleans and explores the dataset (splitting genres, checking data types, and summarizing ratings).
5. Visualizes the most watched genres and the distribution of ratings using Seaborn and Matplotlib.
6. Saves the generated plot as a PNG file.
7. Creates an output directory, copies the plot into it, and compresses the folder into a ZIP file.

 Possible Improvements:
- Handle file paths more robustly, especially for non-Windows OS (e.g., using `os.path.join()` for cross-platform compatibility).
- You could add error handling to check if the ZIP file exists before trying to extract it.
- Depending on the size of the dataset, consider optimizing memory usage (e.g., by working with smaller chunks or sampling the data). 

This script is useful for extracting, analyzing, and visualizing data from a ZIP file containing Netflix shows and movies information.
