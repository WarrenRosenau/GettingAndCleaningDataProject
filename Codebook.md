Getting and Cleaning Data Course Project Codebook
=================================================

**Version 1.0**

**Warren Rosenau**

warrenrosenau@gmail.com

The rows of this record set represent average summary data based on the original dataset grouped by activity and subject averaging all mean or standard deviation features.

**1. Activity**

  Activities performed by the test and train subjects
  
      [LAYING, SITTING, STANDING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS]. String values representing activities.

**2. Subject**

  Test Subject for the measurements
  
      [1,30] . Integer values representing a person.

**3. to 88. Summary Data Values**

  The following columns are averages of the standard deviation or mean values for each experiment performed by that subject and that activity.

      [-1,1] . Averages of normalized floating point values.


Note: Instructions were not clear regarding whether only the columns
ending in Mean/std were of interest or whether to include MeanFreq 
and the X/Y/Z specific mean/std features.  Erring on the side of over-inclusion,
these additional columns have been included.

  * Sensor field naming guidelines
  
          * Field prefixes
  
                * Time = Time domain signals
  
                * Frequency = Frequency domain signals
  
                * Angle = angular signals
  
          * Field suffixes
  
                * X = X axis sensor
  
                * Y = Y axis sensor
  
                * Z = Z axis sensor
  
                * no XYZ suffix = combined X, Y, Z measurement
  
          * Sensors
  
                * BodyAcc
  
                * GravityAcc
  
                * BodyAccJerk
  
                * BodyGyro
  
                * BodyGyroJerk
  
                * BodyAccMag
  
                * GravityAccMag
  
                * BodyAccJerkMag
  
                * BodyGyroMag
  
                * BodyGyroJerkMag
  
                * BodyAcc
  
                * BodyAccJerk
  
                * BodyGyro
  
                * BodyAccMag
  
                * BodyAccJerkMag
  
                * BodyGyroMag
  
                * BodyGyroJerkMag
  
          * Additional angular sensors that do not have suffixes
  
                * GravityMean
  
                * BodyAccMean
  
                * BodyAccJerkMean
  
                * BodyGyroMean
  
                * BodyGyroJerkMean

    * Full field list

          3. Time.BodyAcc.Mean.X
          
          4. Time.BodyAcc.Mean.Y
          
          5. Time.BodyAcc.Mean.Z
          
          * 6 Time.BodyAcc.std.X
          
          * 7 Time.BodyAcc.std.Y
          
          * 8 Time.BodyAcc.std.Z
          
          * 9. Time.GravityAcc.Mean.X
          
          * 10. Time.GravityAcc.Mean.Y
          
          * 11. Time.GravityAcc.Mean.Z
          
          * 12. Time.GravityAcc.std.X
          
          * 13. Time.GravityAcc.std.Y
          
          * 14. Time.GravityAcc.std.Z
          
          * 15. Time.BodyAccJerk.Mean.X
          
          * 16. Time.BodyAccJerk.Mean.Y
          
          * 17. Time.BodyAccJerk.Mean.Z
          
          * 18. Time.BodyAccJerk.std.X
          
          * 19. Time.BodyAccJerk.std.Y
          
          * 20. Time.BodyAccJerk.std.Z
          
          * 21. Time.BodyGyro.Mean.X
          
          * 22. Time.BodyGyro.Mean.Y
          
          * 23. Time.BodyGyro.Mean.Z
          
          * 24. Time.BodyGyro.std.X
          
          * 25. Time.BodyGyro.std.Y
          
          * 26. Time.BodyGyro.std.Z
          
          * 27. Time.BodyGyroJerk.Mean.X
          
          * 28. Time.BodyGyroJerk.Mean.Y
          
          * 29. Time.BodyGyroJerk.Mean.Z
          
          * 30. Time.BodyGyroJerk.std.X
          
          * 31. Time.BodyGyroJerk.std.Y
          
          * 32. Time.BodyGyroJerk.std.Z
          
          * 33. Time.BodyAccMag.Mean
          
          * 34. Time.BodyAccMag.std
          
          * 35. Time.GravityAccMag.Mean
          
          * 36. Time.GravityAccMag.std
          
          * 37. Time.BodyAccJerkMag.Mean
          
          * 38. Time.BodyAccJerkMag.std
          
          * 39. Time.BodyGyroMag.Mean
          
          * 40. Time.BodyGyroMag.std
          
          * 41. Time.BodyGyroJerkMag.Mean
          
          * 42. Time.BodyGyroJerkMag.std
          
          * 43. Frequency.BodyAcc.Mean.X
          
          * 44. Frequency.BodyAcc.Mean.Y
          
          * 45. Frequency.BodyAcc.Mean.Z
          
          * 46. Frequency.BodyAcc.std.X
           
          * 47. Frequency.BodyAcc.std.Y
          
          * 48. Frequency.BodyAcc.std.Z
          
          * 49. Frequency.BodyAcc.MeanFreq.X
          
          * 50. Frequency.BodyAcc.MeanFreq.Y
          
          * 51. Frequency.BodyAcc.MeanFreq.Z
          
          * 52. Frequency.BodyAccJerk.Mean.X
          
          * 53. Frequency.BodyAccJerk.Mean.Y
          
          * 54. Frequency.BodyAccJerk.Mean.Z
          
          * 55. Frequency.BodyAccJerk.std.X
          
          * 56. Frequency.BodyAccJerk.std.Y
          
          * 57. Frequency.BodyAccJerk.std.Z
          
          * 58. Frequency.BodyAccJerk.MeanFreq.X
          
          * 59. Frequency.BodyAccJerk.MeanFreq.Y
          
          * 60. Frequency.BodyAccJerk.MeanFreq.Z
          
          * 61. Frequency.BodyGyro.Mean.X
          
          * 62. Frequency.BodyGyro.Mean.Y
          
          * 63. Frequency.BodyGyro.Mean.Z
          
          * 64. Frequency.BodyGyro.std.X
          
          * 65. Frequency.BodyGyro.std.Y
          
          * 66. Frequency.BodyGyro.std.Z
          
          * 67. Frequency.BodyGyro.MeanFreq.X
          
          * 68. Frequency.BodyGyro.MeanFreq.Y
          
          * 69. Frequency.BodyGyro.MeanFreq.Z
          
          * 70. Frequency.BodyAccMag.Mean
          
          * 71. Frequency.BodyAccMag.std
          
          * 72. Frequency.BodyAccMag.MeanFreq
          
          * 73. Frequency.BodyAccJerkMag.Mean
          
          * 74. Frequency.BodyAccJerkMag.std
          
          * 75. Frequency.BodyAccJerkMag.MeanFreq
          
          * 76. Frequency.BodyGyroMag.Mean
          
          * 77. Frequency.BodyGyroMag.std
          
          * 78. Frequency.BodyGyroMag.MeanFreq
          
          * 79. Frequency.BodyGyroJerkMag.Mean
          
          * 80. Frequency.BodyGyroJerkMag.std
          
          * 81. Frequency.BodyGyroJerkMag.MeanFreq
          
          * 82. Angle.TimeBodyAccMean.Gravity
          
          * 83. Angle.TimeBodyAccJerkMean.GravityMean
          
          * 84. Angle.TimeBodyGyroMean.GravityMean
          
          * 85. Angle.TimeBodyGyroJerkMean.GravityMean
          
          * 86. Angle.X.GravityMean
          
          * 87. Angle.Y.GravityMean
          
          * 88. Angle.Z.GravityMean      
                
                
                
                