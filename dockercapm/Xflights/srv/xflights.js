const cds = require('@sap/cds')

module.exports = class FlightsService extends cds.ApplicationService { init() {

  const { Connections, Airlines, Airports, Flights, Supplements } = cds.entities('FlightsService')


  this.after ('READ', Flights, async () => {
    console.log('Hii!I am Pranathi recently joined bb,i am doing cap project', flights)
  })
  this.after ('READ', Connections, async () => {
    console.log('Hii there how can i connct with u')
  })
   this.after ('READ', Airlines, async () => {
    console.log('when is ur flight')
   })
  this.after ('READ', Airports, async () => {
    console.log('R u at the airport')
  })
  this.after ('READ', Supplements, async () => {
    console.log('do you have supplements')
  })
  
  

  
  

  return super.init()
}}
