# The Germ Line Age Calculator

The following steps are outlined to demonstrate the functionality of
the Germ Line Age Calculator. These steps are to be used with the
Illumina methylation array data sets (450k or EPIC). Specifically, the
steps outlined below assume that beta-values (SWAN normalized) are
available which can be performed with multiple different open source
tools (ChAMP, Minfi, etc.) as well as other software tools (Partek).

Access files needed to run the Germ Line Age Calculator:
```
https://github.com/timgjenkins/Jenkins-et-al-2017
```
Load the predictive model in R:
```
model <- readRDS("GLA_Model.rds")
```
Ensure that the package `glmnet` is loaded in R
```
library(glmnet)
```
Data should be organized as seen below with single CpG data listed
row-wise and each sample listed column-wise with the header for the
CpG label (cg0839...) column titled `RN`:
```
RN          X23         X28       X33       X47       X52       X34
cg00050873  0.13191     0.20154   0.107196  0.219992  0.109324  0.0830337
cg00212031  0.0394964   0.0288217 0.0502977 0.0289973 0.0499303 0.0345183
cg00213748  0.110789    0.0293556 0.0807749 0.0306088 0.0859292 0.0834235
cg00214611  0.0424816   0.0530358 0.0480805 0.0821266 0.0475171 0.0440236
cg00455876  0.106486    0.136325  0.0739211 0.114175  0.105706  0.109751
cg01707559  0.0468505   0.0410757 0.0406775 0.0277944 0.0375733 0.0484815
```
Once your file is loaded in R (or as you load the file in R), name the
data frame `e3`.
```
e3 <- read.csv("mydf", header=T)
```
Utilize the subset (`subsetting.R`) code provided to generate a list
of average methylation values for each region included in the
calculator.
```
source('subsetting.R', chdir=TRUE)
```
The object 'subs' will be created that has all of the samples listed
row-wise and the average beta value for region listed column-wise.
```
head(subs)
```
The resulting data frame will look similar to what is seen below:
```
RN  ELANE        FSCN         GPR45        MIR22HG     N23          PTPRN2.3
X23 0.202215775  0.738866     0.250080417  0.28157444  0.388235667  0.4220245
X28 0.3712295    0.622196333  0.334589125  0.30012768  0.42184      0.46399675
X33 0.1376625    0.684566667  0.179235467  0.25923498  0.322148567  0.3459675
X47 0.25698825   0.494346333  0.258859292  0.27043666  0.3541216    0.376359675
X52 0.088754075  0.431430667  0.181910833  0.15681446  0.308559067  0.29572325
X34 0.14107205   0.648822667  0.22218425   0.23759304  0.426593     0.41708875
```
To finish the preparation of the data frame for use in the Germ Line
Age Calculator a `BATCH` column must be added immediately following
the RN column, which contains the Sentrix Barcode number for each
sample (if this is not readily available, you can include `1` in each
position but the `BATCH` column must be present).

Your final file should look similar to this:
```
RN    BATCH      ELANE       FSCN        GPR45       MIR22HG     N23
X23   8942326104 0.187272233 0.736600367 0.215712194 0.250159898 0.389750733
X27   8942334118 0.232615923 0.706036733 0.217817693 0.253020662 0.420258057
X28   8942326104 0.353824125 0.589611167 0.282183803 0.264005978 0.417610467
X33   8942334118 0.135876225 0.534719133 0.186850114 0.211932798 0.397511413
X33.1 8942326104 0.114813103 0.659827467 0.147309129 0.22177575  0.307777543
X34   8942326104 0.126664823 0.6161507   0.186695718 0.203337478 0.419128267
X35   8942326104 0.169316883 0.541259033 0.142951908 0.22088232  0.519999867
```
Name this data frame `final` and you are prepared to run the
predictor.
```
final <- mydf
```
Once this has been done you are prepared to run the predictive model
on your data using the `Prediction.R` code provided.
```
source('Prediction.R', chdir=TRUE)
```
The output `Predicted.age` is in years and is automatically printed in
the R console but is also stored as `predicted`:
```
print(predicted)

RN    Predicted.age
X23   28.37995901
X27   29.46561255
X28   30.98942059
X33   33.66922111
X33.1 35.51829178
X34   37.74298506
```

Contacts and bug reports
========================

Tim Jenkins
tim.jenkins@hsc.utah.edu


Copyright and License Information
=================================

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
  
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
  
You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
