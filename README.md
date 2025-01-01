
# BAN6420: Programming in R & Python
# Module 4 Assignment: Netflix Data Visualization

# Name: Babalola Taiwo
# Learner IS: 162894

# Netflix Shows and Movies Analysis

Introduction:
 - This project analyzes Netflix shows and movies dataset, addressing missing values, exploring the data, and visualizing trends like the most watched genres and the distribution of ratings.

 Files:
  - Python Scripts: The analysis and visualizations are written in Python.
  - Visualizations: Charts like 'Most Watched Genres' are saved as images.
  - README: Instructions on how to run and interpret the code.
 
Explanation on how the script works
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

 12. Save Plot as PNG:
   - The bar plot showing the most watched genres is saved as a PNG file (`most_watched_genres.png`) using `plt.savefig()`.

 14. Save Outputs:
   - A directory (`Netflix_analysis_output/`) is created to store the output files, including the plot.
   - The generated PNG plot is copied into this output directory using `shutil.copy()`.
   - The entire output directory is then compressed into a ZIP file (`Netflix_analysis.zip`) using `shutil.make_archive()`.

How to Run
  - Unzip the dataset into the folder. or clone it from git hub with the repository link-
  - open cmd and Run the Python script to clean the data, explore it, and generate the visualizations.
  - Data Visualization in R.
     - Install R studio
    - load library(png).
    - Naviagte and open the file: BAN6420_M4_R_visual.R from the working directory on R-studio.
    - Execute by click on Run. (most watched genre is displa
