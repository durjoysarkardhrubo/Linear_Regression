# Linear Regression Analysis Tool

This repository contains a MATLAB script for performing linear regression analysis. The script reads data points from an input file, calculates the linear regression coefficients for both dependent and independent variables, evaluates the correlation coefficient, and then plots the results for visualization.

## Features

- **Data Input**: Reads two-dimensional data points from a text file.
- **Regression Analysis**: Computes linear regression coefficients for Y on X and X on Y.
- **Correlation Coefficient**: Calculates and displays the correlation coefficient between X and Y.
- **Data Visualization**: Generates a scatter plot of the data points along with the regression lines.

## Getting Started

### Prerequisites

Ensure you have MATLAB installed on your computer to run this script.

### Installation

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/yourusername/your-repository-name.git
```

Navigate to the repository folder:

```bash
cd your-repository-name
```

### Usage

1. Prepare your data file (`input.txt`) and place it in a known directory. The data file should contain two columns corresponding to X and Y values, respectively.
2. Open MATLAB and navigate to the folder containing the script.
3. Modify the script's file path to point to your `input.txt`.
4. Run the script in MATLAB. The output will be displayed in MATLAB's command window and a plot will be generated.
5. Results (coefficients and correlation coefficient) will also be saved to `output.txt` in the specified directory.

### Data Format

The input data file should be a text file with two columns separated by spaces or tabs:

```
x1 y1
x2 y2
...
xn yn
```

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any bugs, feature requests, or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgements

- This script was inspired by the need for a simple, straightforward method to perform linear regression analysis.
- Thanks to anyone whose code was used as a reference.
