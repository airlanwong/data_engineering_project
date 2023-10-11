create external table spectrum_table.project_table
(
gender VARCHAR(5),
NationalITy VARCHAR(5),
PlaceofBirth VARCHAR(10),
StageID VARCHAR(10),
GradeID VARCHAR(10),
SectionID VARCHAR(5),
Topic VARCHAR(10),
Semester VARCHAR(10),
Relation VARCHAR(10),
raisedhands Integer,
VisITedResources Integer,
AnnouncementsView Integer,
Discussion Integer,
ParentAnsweringSurvey VARCHAR(10),
ParentschoolSatisfaction VARCHAR(10),
StudentAbsenceDays VARCHAR(10),
Class VARCHAR(10)
)
stored as parquet
location 's3://de-project-bucket-alan/de_project/ingestion/'