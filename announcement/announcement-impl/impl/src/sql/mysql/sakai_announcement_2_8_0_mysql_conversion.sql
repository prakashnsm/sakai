alter table ANNOUNCEMENT_MESSAGE add column MESSAGE_ORDER int(11) default null;

drop index IE_ANNC_MSG_ATTRIB on ANNOUNCEMENT_MESSAGE;
create index IE_ANNC_MSG_ATTRIB on ANNOUNCEMENT_MESSAGE (DRAFT, PUBVIEW, OWNER, MESSAGE_ORDER);

drop index ANNOUNCEMENT_MESSAGE_CDD on ANNOUNCEMENT_MESSAGE;
create index ANNOUNCEMENT_MESSAGE_CDD on ANNOUNCEMENT_MESSAGE (CHANNEL_ID, MESSAGE_DATE, MESSAGE_ORDER, DRAFT); 
