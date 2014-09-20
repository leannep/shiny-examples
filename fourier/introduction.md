---
title: "Readme"
author: "Leanne Guy"
date: "20 September, 2014"
output: html_document
---

Introduction
========================================================
This is a shiny application to generate a simple
<a href="http://en.wikipedia.org/wiki/Fourier_series"> Fourier Series </a> 
defined by 

\(f(x)= a_0 + a_1 cos(\\frac{2\\pi t}{p} + \\phi) \)
 
### Input Parameters 

There are 4 input parameters required 

1. The mean magnitude of the signal, \(a_0\)
2. The amplitude of the oscillation \( a_1\)
3. The period of oscillation \(p\)
4. The phase of the oscillation at origin \(\\phi\)

### Usage

1. Input the required parameters for the generation of a Fourier series in the left panel
2. The plot is displayed on the tab 'Fourier Series Plot'
3. The data in an ascii table are displayed on the tab 'Data'
4. Click on the download button to download the ascii data to file

### Source Code 

The source code is available ats
<a href="https://github.com/leannep/shiny/fourier/output"> @leannep/shiny/fourier/output </a>







