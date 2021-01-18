{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "name": "Untitled27.ipynb",
      "provenance": [],
      "authorship_tag": "ABX9TyMfittfkY4dBYBxWoyifl6A",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/thanadolch/data_viz/blob/main/numpy\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "lVNMLHLRnseR"
      },
      "source": [
        "import pandas as pd\r\n",
        "import numpy as np"
      ],
      "execution_count": 3,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "iEhtDldYn0PX"
      },
      "source": [
        "#matrix 2*3\r\n",
        "A1 = np.array([[2,3,4],[5,2,1]])"
      ],
      "execution_count": 6,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "eno_1TowoVdi"
      },
      "source": [
        "#matrix 3*2\r\n",
        "A2 = np.array([[6,4],[1,9],[5,3]])"
      ],
      "execution_count": 7,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "0ICek3qKorvC"
      },
      "source": [
        "#matrix 4*4\r\n",
        "B1 = np.array([[1,2,5,6],[2,5,8,7],[3,6,9,7],[2,5,7,1]])"
      ],
      "execution_count": 15,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "l6OJEF87pG1e"
      },
      "source": [
        "#matrixx 4*1\r\n",
        "B2 = np.array([[2],[9],[6],[7]])"
      ],
      "execution_count": 17,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "Ej83Vea2qFvg"
      },
      "source": [
        "#matrix 2*2\r\n",
        "C1 = np.array([[2,3],[5,9]])\r\n",
        "C2 = np.array([[7,5],[2,1]])"
      ],
      "execution_count": 19,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "P8EZdfKxqsXJ"
      },
      "source": [
        "def result(A, B):\r\n",
        "    logic = [[0 for row in range(len(B[0]))] for col in range(len(A))]\r\n",
        "    for i in range(len(A)):\r\n",
        "        for j in range(len(B[0])):\r\n",
        "            for k in range(len(B)):\r\n",
        "                logic[i][j] += A[i][k]*B[k][j]\r\n",
        "    value = np.matrix(logic)\r\n",
        "    return value"
      ],
      "execution_count": 25,
      "outputs": []
    },
    {
      "cell_type": "code",
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "achrB-XgrKnr",
        "outputId": "ea075fcd-dac6-4410-f8f9-75cb05254355"
      },
      "source": [
        "result(A1,A2)"
      ],
      "execution_count": 26,
      "outputs": [
        {
          "output_type": "execute_result",
          "data": {
            "text/plain": [
              "matrix([[35, 47],\n",
              "        [37, 41]])"
            ]
          },
          "metadata": {
            "tags": []
          },
          "execution_count": 26
        }
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "BQqv3o3Wrfss",
        "outputId": "cdb9de17-9832-444a-fad4-4b4f5c1c67d0"
      },
      "source": [
        "print(result(B1,B2))\r\n",
        "\r\n",
        "\r\n",
        "print(result(C1,C2))"
      ],
      "execution_count": 32,
      "outputs": [
        {
          "output_type": "stream",
          "text": [
            "[[ 92]\n",
            " [146]\n",
            " [163]\n",
            " [ 98]]\n",
            "[[20 13]\n",
            " [53 34]]\n"
          ],
          "name": "stdout"
        }
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "id": "VhiM5oVorqYp"
      },
      "source": [
        ""
      ],
      "execution_count": null,
      "outputs": []
    }
  ]
}