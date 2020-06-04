//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
E<> exists (i : int[0, NO_OF_CLIENTS - 1]) Session(i).SessionUp and Session(i).time > Session(i).t2

/*

*/
Client(0).SynSent --> Client(0).Init

/*

*/
Client(0).SessionActive --> (Client(0).Init and Client(0).time < Client(0).t1)

/*

*/
Client(0).SessionActive --> Client(0).Init

/*

*/
Session(0).SessionUp --> Session(0).SessionDown

/*

*/
E<> exists (i : int[0, NO_OF_CLIENTS - 1]) Client(i).SessionActive and Session(i).SessionDown

/*

*/
A[] forall (i : int[0, NO_OF_CLIENTS - 1]) Client(i).SessionActive imply Session(i).SessionUp

/*

*/
E<> exists (i : int[0, NO_OF_CLIENTS - 1]) Client(i).SynSent and Client(i).time > TIMEOUT

/*

*/
E<> forall (i : int[0, NO_OF_CLIENTS - 1]) Client(i).SynSent

/*

*/
E<> forall (i : int[0, NO_OF_CLIENTS - 1]) Client(i).SessionActive
