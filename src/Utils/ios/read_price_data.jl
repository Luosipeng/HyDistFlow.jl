"""
    read_price_data(file_path)

Read electricity price time series data from an Excel file.

# Arguments
- `file_path`: Path to the Excel file containing price data

# Returns
- `time_column`: Vector containing time values from the first column
- `time_str_column`: Vector containing time string representations from the second column
- `data`: DataFrame containing the entire price dataset

# Description
This function reads electricity price time series data from an Excel file into a DataFrame.
It extracts the time values (first column) and time string representations (second column).
The function returns these components separately along with the complete DataFrame for further processing.
"""
function read_price_data(file_path)
    # Read Excel file into DataFrame
    data = DataFrame(XLSX.readtable(file_path, 1, header=true))
    
    # Extract time column and time string column
    time_column = data[!, 1]  # First column is time
    time_str_column = data[!, 2]  # Second column is time string
    
    
    return time_column, time_str_column, data
end