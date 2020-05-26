//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
E[] Year.Regular

/*

*/
A[] Year.year >= 1900 and Year.year <= 2020

/*

*/
Year.Regular --> Year.Leap

/*

*/
Year.Leap --> Year.Regular

/*

*/
Month.February --> Month.day == 28

/*

*/
E<> Year.year == 2021

/*

*/
A<> Year.year == 1999 and Year.Regular

/*

*/
A<> Year.year == 2004 and Year.Leap

/*

*/
A<> Year.year == 1996 and Year.Leap

/*

*/
A<> Year.year == 2000 and Year.Leap

/*

*/
A<> Month.April and Month.day == 30

/*

*/
E<> Month.April and Month.day > 30

/*

*/
E<> Month.January and Month.day > 31

/*

*/
E<> Month.day > 31

/*

*/
A<> Month.day <= 31

/*

*/
E<> Year.Leap and Month.February and Month.day > 29

/*

*/
A<> Year.Leap and Month.February and Month.day == 29

/*
Check if exists regular february with more than 28 days
*/
E<> Year.Regular and Month.February and Month.day > 28

/*

*/
A<> Year.Regular and Month.February and Month.day == 28

/*

*/
A<> Year.year == 1900 and Month.February and Month.day > 1

/*

*/
E<> Year.year != 1900 and Month.day < 1
