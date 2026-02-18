using{incidentmngt.db as inc}from '../db/schema';

service incident{
    entity Incident as projection on inc.Incident;
    entity Agent as projection on inc.Agent;
}