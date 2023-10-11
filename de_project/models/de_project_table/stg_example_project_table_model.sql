with example_project_table AS (
    select *,
    Now() as create_datetime,
    now() as update_datetime,
    'Alan' as updated_by,
    MD5(NVL(gender,'') || '-' ||
    NVL(NationalITy,'') || '-' ||
    NVL(PlaceofBirth,'') || '-' ||
    NVL(Relation,'') || '-' ||
    NVL(raisedhands,'') || '-' ||
    NVL(VisITedResources,'') || '-' ||
    NVL(AnnouncementsView,'') || '-' ||
    NVL(Discussion,'')
    ) as delta_hash
    from public.stg_project_table
)
select
gender,
NationalITy,
PlaceofBirth,
StageID,
GradeID,
SectionID,
Topic,
Semester,
Relation,
raisedhands,
VisITedResources,
AnnouncementsView,
Discussion,
ParentAnsweringSurvey,
ParentschoolSatisfaction,
StudentAbsenceDays,
Class,
create_datetime,
update_datetime,
updated_by,
delta_hash
from
public.project_table