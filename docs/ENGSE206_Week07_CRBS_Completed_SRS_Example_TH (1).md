# Campus Resource Booking System — Software Requirements Specification Draft v1.1

## 0. Document Control

| Field | Value |
|---|---|
| Case ID | CRBS |
| Document ID | CRBS-SRS-W07-v1.1 |
| Version | 1.1-draft |
| Status | Baseline Candidate — not approved baseline |
| W05 source | 15 FR / 10 BR / 8 NFR / 13 DR |
| W06 source | 12 US / 10 UC / 24 AC |

## 1. Introduction

SRS นี้รวม Completed Example Week05–Week06 เป็น specification ที่ตรวจ trace ได้และใช้เป็น input ของ architecture, UX/UI, database และ low-level design โดยยังไม่ถือเป็น Approved Baseline

### 1.1 Goals

| Goal | Outcome | Source | Status |
|---|---|---|---|
| G-01 | ผู้ขอใช้ตรวจทรัพยากรและช่วงเวลาว่างก่อนสร้างคำขอได้ | Teaching baseline | Accepted for case |
| G-02 | คำขอมีข้อมูลและสถานะที่ผู้เกี่ยวข้องเข้าใจตรงกัน | Teaching baseline | Accepted for case |
| G-03 | คำขอปกติและกรณีพิเศษไปถึงผู้มีอำนาจที่เหมาะสม | TD-05/06 | Accepted for case |
| G-04 | ลดความเสี่ยงจาก Confirmed booking ทับซ้อน | TD-08–10 | Accepted for case |
| G-05 | ติดตามผู้รับผิดชอบ การส่งมอบ การรับคืน และสภาพได้ | TD-12–14 | Accepted for case |
| G-06 | เหตุการณ์และการตัดสินใจสำคัญตรวจสอบย้อนหลังได้ | TD-17 | Accepted for case |
| G-07 | ใช้ข้อมูลส่วนบุคคลเท่าที่จำเป็นต่อสิทธิ์และความรับผิดชอบ | TD-18 | Accepted for case |

### 1.2 Scope

**Core/Supporting:** catalog/availability, Draft/Submit, validation/conflict, standard review, tracking/cancel, handover/return, manual AvailabilityBlock, in-app notification และ audit

**Extension/Out:** exception path ใน Student Core, live schedule, external notification, payment/penalty, full maintenance, IoT, multi-campus/multi-resource และ AI decision

## 2. Overall Description

| Actor | Role | Authorized actions | Restrictions |
|---|---|---|---|
| ACT-01 | Student Requester | ค้นหา สร้าง/ส่ง/ติดตาม/ยกเลิกคำขอของตน และให้ข้อมูลเพิ่ม | ไม่อนุมัติ ไม่แก้ Resource และไม่เห็นคำขอคนอื่น |
| ACT-02 | Resource Officer | ดูแล Resource/AvailabilityBlock ตัดสิน standard request และบันทึก handover/return | ไม่ตัดสิน exception แทน Area Manager |
| ACT-03 | Area Manager | ตัดสิน exception พร้อม rationale | ห้าม bypass overlap guard และเห็นข้อมูลเท่าที่จำเป็น |
| ACT-04 | System Administrator | จัดการ role mapping/configuration และดูผล audit ตามสิทธิ์ | ไม่แก้ business decision หรือ booking policy |

| CAP | Capability | Anchors | W06 | Coverage |
|---|---|---|---|---|
| CAP-01 | Resource Catalog and Availability | FR-01/02/11; DR-04–07 | UC-01 | Detailed |
| CAP-02 | Booking Request | FR-03/04; BR-01–03; DR-07/08 | UC-02 | Detailed |
| CAP-03 | Validation and Conflict Control | FR-04/06; BR-03/06/07; NFR-04 | UC-02/04 | Detailed |
| CAP-04 | Approval and Exception | FR-06/07; BR-04/05/08; DR-09 | UC-04/05 | Detailed; UC-05 Extension |
| CAP-05 | Request Tracking and Cancellation | FR-05/08; BR-09; DR-08/12/13 | UC-03/06 | Partial |
| CAP-06 | Handover and Return | FR-12–14; BR-10; DR-10/11 | UC-07/08 | Detailed |
| CAP-07 | Notification and Audit | FR-09/15; NFR-01–03/08; DR-12/13 | UC-10 + events | Partial/Cross-cutting |
| CAP-08 | Resource Administration | FR-10/11; NFR-02; DR-02–06 | UC-09 | Partial/Extension |

## 3. Functional Requirements

| FR | Requirement | Source | CAP | Priority/Admission | W06 model | Status |
|---|---|---|---|---|---|---|
| FR-01 | ระบบต้องให้ Requester ค้นหาทรัพยากรตามประเภท วัน และช่วงเวลาได้ | F-01–F-03; E-01–E-03; TD-01/16 | CAP-01 | Must/Core | US-01; UC-01; AC-01–04 | Detailed; Ready for Modeling |
| FR-02 | ระบบต้องแสดงรายละเอียด สถานะ และเงื่อนไขที่มีแหล่งอ้างอิงของทรัพยากรแต่ละรายการ | E-03; TD-16 | CAP-01 | Must/Core | US-02; UC-01; AC-01/03 | Detailed; Ready with TBD |
| FR-03 | ระบบต้องให้ Requester สร้าง แก้ไข และยุติ Draft request ของตนได้ | E-04/E-12; TD-01–03 | CAP-02 | Must/Core | US-03; UC-02; AC-08 | Detailed; Ready for Modeling |
| FR-04 | ระบบต้องให้ Requester ส่งคำขอที่มีข้อมูลขั้นต่ำและรับเลขอ้างอิงคำขอได้ | E-04/E-12; TD-03/04 | CAP-02/03 | Must/Core | US-04; UC-02; AC-05–07 | Detailed; Ready for Modeling |
| FR-05 | ระบบต้องให้ Requester ดูสถานะและประวัติคำขอ รวมทั้งส่งข้อมูลเพิ่มเมื่อถูกร้องขอได้ | E-06; TD-07/15/17 | CAP-05/07 | Must/Core | US-05/06; UC-03; cross-cutting | Partial; Ready for Modeling |
| FR-06 | ระบบต้องให้ Resource Officer ตรวจและตัดสิน standard request เป็น Confirmed, Rejected หรือ Needs Information พร้อมเหตุผลตามกติกา | E-04/E-12; TD-05/07–10 | CAP-03/04 | Must/Core | US-08; UC-04; AC-09–12 | Detailed; Ready for Modeling |
| FR-07 | ระบบต้องส่ง exception request ให้ Area Manager และบันทึกผลพร้อมเหตุผล | E-05/E-07/E-11; TD-06/07 | CAP-04 | Should/Extension | US-09; UC-05; AC-13–16 | Detailed/Extension; Extension Ready |
| FR-08 | ระบบต้องให้ Requester ยกเลิกคำขอของตนในสถานะที่อนุญาตและบันทึกเหตุผลเมื่อจำเป็น | TD-11/17 | CAP-05 | Should/Core | US-07; UC-06; — | Partial; Ready for Modeling |
| FR-09 | ระบบต้องสร้าง in-app notification เมื่อเกิดเหตุการณ์สำคัญที่กำหนด | E-06; TD-15 | CAP-07 | Should/Supporting | supporting; UC-03/04/05/07/08; AC-10/14/15/17/19/21 | Cross-cutting; Ready with TBD |
| FR-10 | ระบบต้องให้ Resource Officer จัดการข้อมูลและ lifecycle status ของ Resource ในหน่วยงาน | F-01; TD-16 | CAP-08 | Should/Extension | —; UC-09; — | Partial/Extension; Extension Ready |
| FR-11 | ระบบต้องให้ Resource Officer สร้าง แก้ไข หรือยกเลิก AvailabilityBlock พร้อม source และ reason | E-11; TD-16 | CAP-01/08 | Must/Supporting | —; UC-01/04/09; AC-03/07 | Supporting; Ready for Modeling |
| FR-12 | ระบบต้องให้ Resource Officer บันทึกการส่งมอบอุปกรณ์ให้ responsible requester พร้อมเวลาและกำหนดคืน | F-04/E-09; TD-12 | CAP-06 | Must/Core | US-10; UC-07; AC-17–20 | Detailed; Ready for Modeling |
| FR-13 | ระบบต้องให้ Resource Officer บันทึกการรับคืน เวลา และ condition summary ของอุปกรณ์ | F-04/E-09/E-14; TD-13 | CAP-06 | Must/Core | US-11; UC-08; AC-21–24 | Detailed; Ready for Modeling |
| FR-14 | ระบบต้องให้ Resource Officer บันทึก no-show event โดยไม่คำนวณค่าปรับใน Core | E-08/E-13; TD-14 | CAP-06/07 | Could/Extension | —; UC-07 ALT; AC-19 | Extension; Extension Ready |
| FR-15 | ระบบต้องให้บทบาทที่ได้รับสิทธิ์ดู request history และ audit events ที่เกี่ยวข้องได้ | F-02/F-03; TD-17 | CAP-07 | Should/Core | US-12; UC-10; cross-cutting | Partial; Ready with TBD |

## 4. Business Rules

| BR | Rule | Authority | Priority | Status | W06 evidence |
|---|---|---|---|---|---|
| BR-01 | หนึ่ง Booking Request อ้าง Resource หนึ่งรายการและหนึ่งช่วงเวลา | TD-01 | Must | Authorized Teaching Rule | UC-02; AC-05 |
| BR-02 | Draft ไม่กัน Resource และไม่เข้าสู่ review queue | TD-02 | Must | Authorized Teaching Rule | UC-02; AC-05/08 |
| BR-03 | Submit ต้องมี Resource, Start, End และ Purpose และ Start ต้องก่อน End | TD-03 | Must | Authorized Teaching Rule | UC-02; AC-05/06 |
| BR-04 | Standard request ถูกพิจารณาโดย Resource Officer | TD-05 | Must | Authorized Teaching Rule | UC-04; AC-09–12 |
| BR-05 | Request ที่มี exception flag หรือชน AvailabilityBlock ถูกส่ง Area Manager | TD-06 | Should | Authorized Teaching Rule | UC-02/05; AC-07/13–16 |
| BR-06 | เฉพาะ Confirmed request เท่านั้นที่กัน Resource | TD-08 | Must | Authorized Teaching Rule | UC-01/02/04; AC-02/05/09 |
| BR-07 | ก่อน Confirmed ต้องตรวจใหม่ว่าไม่มี Confirmed request ของ Resource เดียวกันในเวลาทับซ้อน | TD-09/10 | Must | Authorized Teaching Rule | UC-01/04/05; AC-02/09/12/13/16 |
| BR-08 | Rejected, Needs Information และ Exception Decision ต้องมี reason | TD-07 | Must | Authorized Teaching Rule | UC-04/05; AC-10/11/14/15 |
| BR-09 | Confirmed request ยกเลิกได้ก่อน Check Out และต้องมี cancellation reason | TD-11 | Should | Authorized Teaching Rule | UC-06; Partial |
| BR-10 | Check Out ต้องมี responsible requester และ due time; Return ต้องมี returned time และ condition summary | TD-12/13 | Must | Authorized Teaching Rule | UC-07/08; AC-17–24 |

## 5. Non-functional Requirements

| NFR | Requirement | Scenario | Response/measure | Verification | Status |
|---|---|---|---|---|---|
| NFR-01 | ระบบต้องเก็บ user data เท่าที่จำเป็นและไม่เก็บ password หรือเลขบัตรประชาชน | เมื่อมีการออกแบบ/เปลี่ยนข้อมูลผู้ใช้ ต้องตรวจ field inventory ว่าเก็บเฉพาะ external reference และ display data ที่จำเป็น | ไม่มี password/เลขบัตรประชาชน; sensitive fields มี justification | Inspection + privacy review | Ready |
| NFR-02 | ระบบต้องจำกัดการอ่านและการกระทำตาม role, unit scope และ ownership | เมื่อ actor อ่านหรือกระทำกับข้อมูล ระบบต้องตรวจ role, unit scope และ ownership | unauthorized action ถูกปฏิเสธและไม่เปิดเผยข้อมูลเกินสิทธิ์ | Authorization matrix + negative tests | Ready; matrix detail in OI-08 |
| NFR-03 | การเปลี่ยนสถานะและ decision ต้องสร้าง audit event ที่มี actor, time, subject และ from/to state | เมื่อสถานะหรือ decision เปลี่ยน ต้องสร้าง AuditEvent | มี actor/time/subject/from-to/reason ตามกติกา | Record inspection | Ready |
| NFR-04 | การยืนยันคำขอพร้อมกันต้องไม่สร้าง Confirmed bookings ที่ทับซ้อนกัน | เมื่อมีการ approve resource/time เดียวกันพร้อมกัน | เกิด Confirmed ได้ไม่เกินหนึ่ง request | Concurrent scenario test | Ready; design mechanism TBD |
| NFR-05 | การค้นหาต้องตอบสนองในเวลาที่ผู้ใช้ยอมรับได้ภายใต้ workload ที่กำหนด | Requester ค้นหาภายใต้ workload ที่ตกลง | target, workload และ percentile = TBD | Performance test | Open — OI-01 |
| NFR-06 | Flow หลักต้องใช้งานด้วย keyboard และมี label, status และ error ที่เข้าใจได้ | ผู้ใช้ทำ flow หลักด้วย keyboard และพบ validation error | focus/label/status/error เข้าใจได้; เกณฑ์ละเอียด TBD | Keyboard walkthrough + accessibility review | Open detail |
| NFR-07 | ระบบต้องป้องกันการสูญหายของ request, decision และ audit data ตาม recovery objective ที่กำหนด | เกิดเหตุขัดข้องที่กระทบ request/decision/audit data | RPO/RTO/backup policy = TBD | Backup/restore exercise | Open — OI-02 |
| NFR-08 | ระบบต้องบันทึก operational error และ correlation reference โดยไม่เปิดเผยข้อมูลส่วนบุคคลเกินจำเป็น | เกิด operational error ใน request flow | มี correlation reference โดย log ไม่เปิด PII เกินจำเป็น; retention = TBD | Log inspection + failure scenario | Open — OI-02 |

## 6. Data Requirements

รายการนี้เป็น conceptual data requirement ไม่ใช่ physical schema

| DR | Concept | Requirement | Relationships | Classification | Source | W06 use |
|---|---|---|---|---|---|---|
| DR-01 | UserReference | ระบบต้องเก็บ external user reference และ display information เท่าที่จำเป็น โดยไม่เก็บ password หรือเลขบัตรประชาชน | มี RoleAssignment; เป็น requester/responsible/decision actor | Personal | TD-18; Domain Scope หัวข้อ 2/5 | ทุก UC ผ่าน actor identity |
| DR-02 | RoleAssignment | ระบบต้องเชื่อมผู้ใช้กับ role และ organizational unit เพื่อใช้ตรวจสิทธิ์และขอบเขตข้อมูล | UserReference ↔ Unit ↔ Role | Internal/Personal | ACT-01–04; NFR-02 | UC-04/05/09/10; Partial |
| DR-03 | OrganizationalUnit | ระบบต้องเก็บหน่วยงานหรืออาคารที่รับผิดชอบ Resource และขอบเขต Officer | หนึ่ง Unit มีหลาย Resource และ RoleAssignment | Reference/Internal | Scope constraint; Domain Scope หัวข้อ 2 | UC-01/04/09 |
| DR-04 | ResourceType | ระบบต้องเก็บประเภทห้องหรืออุปกรณ์เพื่อจัดกลุ่ม Resource และรองรับเงื่อนไขที่อาจต่างกัน | หนึ่ง ResourceType มีหลาย Resource | Public/Reference | CAP-01/08; Domain Scope หัวข้อ 2 | UC-01/09; AC-01 |
| DR-05 | Resource | ระบบต้องเก็บรหัส/ชื่อ ประเภท หน่วยงาน สถานที่ทั่วไป และ lifecycle status ของทรัพยากร | อยู่ใน Unit และ Type; มี Block/Request | Public/Reference + Internal status | FR-01/02/10; TD-16 | UC-01/02/04/07–09 |
| DR-06 | AvailabilityBlock | ระบบต้องเก็บ Resource, start, end, source, reason และผู้สร้างสำหรับช่วงที่ไม่เปิดให้คำขอปกติ | ผูก Resource; ใช้ค้นหาและ route exception | Internal | TD-06/16; FR-11 | UC-01/02/04/05/09; AC-03/07 |
| DR-07 | BookingRequest | ระบบต้องเก็บ requester reference, Resource, start, end, purpose, reference number และ request state | มี Revision/Decision; อาจมี Fulfillment | Personal/Internal | TD-01–04; Domain Scope หัวข้อ 4 | UC-02–08/10 |
| DR-08 | RequestRevision | ระบบต้องเก็บ snapshot ของข้อมูลที่แก้ ผู้แก้ เวลา และบริบทเมื่อมีการส่งข้อมูลเพิ่ม | หลาย Revision ต่อหนึ่ง BookingRequest | Personal/Internal | FR-05; TD-07/17 | UC-03; Partial |
| DR-09 | DecisionRecord | ระบบต้องเก็บ request, decision type, actor, timestamp และ reason เมื่อกติกากำหนด | หลาย Decision ต่อหนึ่ง BookingRequest | Sensitive operational | TD-05–09; Domain Scope หัวข้อ 4 | UC-04/05/10; AC-09–16 |
| DR-10 | FulfillmentRecord | ระบบต้องเก็บ confirmed request, fulfillment state, responsible requester, checkout time, due time, returned time หรือ no-show event ตาม flow | ศูนย์หรือหนึ่ง record ต่อ BookingRequest | Personal/Internal | TD-12–14; BR-10 | UC-07/08; AC-17–24 |
| DR-11 | ConditionRecord | ระบบต้องเก็บ condition summary และ optional attachment reference โดยไม่บังคับรูปภาพ | หลาย ConditionRecord ต่อ FulfillmentRecord | Sensitive operational | TD-13; NFR-01 | UC-08; AC-21–24 |
| DR-12 | Notification | ระบบต้องเก็บ recipient, event/reference, message summary, created time และ read status สำหรับ in-app notification | หลาย Notification ต่อ UserReference/เหตุการณ์ | Personal/Internal | TD-15; FR-09 | UC-03/04/05/07/08; Partial |
| DR-13 | AuditEvent | ระบบต้องเก็บ actor, event, timestamp, affected subject, from/to state และ reason/context เมื่อกำหนด | หลาย AuditEvent ต่อ business subject | Sensitive operational | TD-17; NFR-03 | UC-02/04/05/07–10 |

## 7. Behavioral Model References

- User Stories: US-01–US-12
- Use Cases: UC-01–UC-10; Detailed 6; Summary/Supporting 4
- Acceptance Criteria: AC-01–AC-24 เป็น verification specification
- CAP-05/CAP-07/CAP-08 คง Partial; UC-05 คง Extension

### 7.1 บัญชีรับเข้า W06 แบบแจกแจงรหัส

- US: US-01, US-02, US-03, US-04, US-05, US-06, US-07, US-08, US-09, US-10, US-11, US-12
- UC: UC-01, UC-02, UC-03, UC-04, UC-05, UC-06, UC-07, UC-08, UC-09, UC-10
- AC: AC-01, AC-02, AC-03, AC-04, AC-05, AC-06, AC-07, AC-08, AC-09, AC-10, AC-11, AC-12, AC-13, AC-14, AC-15, AC-16, AC-17, AC-18, AC-19, AC-20, AC-21, AC-22, AC-23, AC-24

| From | Trigger | To | Guard/result | Source |
|---|---|---|---|---|
| Draft | submit [required data valid] | Submitted | BR-02/03; FR-04 |
| Submitted | precheck [standard] | Under Review | TD-04; FR-04 |
| Submitted | precheck [exception/block] | Exception Review | BR-05; FR-07 |
| Under Review | approve [recheck passes] | Confirmed | BR-06/07; NFR-04 |
| Under Review | request more information [reason] | Needs Information | BR-08; FR-05/06 |
| Needs Information | resubmit | Submitted | FR-05; DR-08 |
| Under Review / Exception Review | reject [reason] | Rejected | BR-08 |
| Exception Review | approve [recheck passes] | Confirmed | BR-05/07 |
| Eligible request | cancel [guard; reason when Confirmed] | Cancelled | BR-09; FR-08 |
| Awaiting Handover | check out [responsible + due] | Checked Out | BR-10; FR-12 |
| Checked Out | return [returned time + condition] | Returned | BR-10; FR-13 |
| Awaiting Handover | record no-show | No Show | FR-14; no penalty |

## 8. External Interfaces
    
| ID | System | Data/direction | Scope | TBD |
|---|---|---|---|---|
| EXT-01 | Institutional Identity Service | เข้า: user reference, display identity, role claim | Core boundary assumption | protocol, failure behavior, field contract = TBD |
| EXT-02 | Class Schedule Source | เข้า: reserved time window และ source identity | Extension | format, frequency, reconciliation = TBD |
| EXT-03 | External Notification Channel | ออก: delivery request; เข้า: delivery result | Extension | channel, privacy, retry = TBD |

## 9. Traceability and Coverage

| CAP | Capability | W05 anchors | W06 model | Coverage |
|---|---|---|---|---|
| CAP-01 | Resource Catalog and Availability | FR-01/02/11; DR-04–07 | UC-01 | Detailed |
| CAP-02 | Booking Request | FR-03/04; BR-01–03; DR-07/08 | UC-02 | Detailed |
| CAP-03 | Validation and Conflict Control | FR-04/06; BR-03/06/07; NFR-04 | UC-02/04 | Detailed |
| CAP-04 | Approval and Exception | FR-06/07; BR-04/05/08; DR-09 | UC-04/05 | Detailed; UC-05 Extension |
| CAP-05 | Request Tracking and Cancellation | FR-05/08; BR-09; DR-08/12/13 | UC-03/06 | Partial |
| CAP-06 | Handover and Return | FR-12–14; BR-10; DR-10/11 | UC-07/08 | Detailed |
| CAP-07 | Notification and Audit | FR-09/15; NFR-01–03/08; DR-12/13 | UC-10 + events | Partial/Cross-cutting |
| CAP-08 | Resource Administration | FR-10/11; NFR-02; DR-02–06 | UC-09 | Partial/Extension |

## 10. Open Issues

| OI | Question/TBD | Affected IDs | Owner | Next action/evidence | Needed by |
|---|---|---|---|---|---|
| OI-01 | Performance target, workload และ percentile | NFR-05 | Product Owner / Instructor | เก็บ workload fixture และ accepted target | Performance plan |
| OI-02 | Retention, RPO/RTO และ backup/restore | NFR-01/03/07/08; DR-07/09/13 | Data/Operations reviewer | นโยบาย retention + recovery evidence | Architecture/Data design |
| OI-03 | Identity fields, protocol และ failure behavior | NFR-01/02; DR-01/02; EXT-01 | Security/Interface reviewer | Identity contract | Interface design |
| OI-04 | Schedule source integration | FR-07/11; DR-06; EXT-02 | Product Owner | Interface decision; Core ใช้ manual block ต่อ | Integration design |
| OI-05 | External notification channel | FR-09; DR-12; EXT-03 | Product Owner | Channel/privacy/delivery contract | Extension design |
| OI-06 | No-show timing และ penalty policy | FR-14; DR-10 | Policy owner | Policy evidence; Core ไม่มี penalty | Policy validation |
| OI-07 | Detailed flows/AC สำหรับ UC-03/06/09/10 | FR-05/08/10/11/15 | Requirements team | Model review และเพิ่ม AC เมื่อ admitted | Feature baseline |
| OI-08 | Role-action และ audit data visibility | NFR-02; FR-15; DR-02/13 | Security/Requirements reviewer | Authorization matrix + negative scenarios | SRS validation |

## 11. Verification Plan

| VF | Method | Target | Procedure/evidence | Owner |
|---|---|---|---|---|
| VF-01 | Review | FR/BR/NFR/DR ทุกข้อมี source, status และ disposition | SRS review checklist + trace CSV | Requirements reviewer |
| VF-02 | Demonstration | UC-01/02/04/07/08 main flow ทำได้ตาม AC | Prototype or scripted walkthrough | Product/Instructor |
| VF-03 | Test | Validation, authorization, conflict และ state guards | AC-02/04/06/08/12/16/18/20/22/23 | QA/Developers |
| VF-04 | Analysis | Concurrency design รองรับ NFR-04 | Design reasoning + race scenario | Architect/Developers |
| VF-05 | Inspection | DR-01–13 และ privacy classification สอดคล้องกับ data flow | Data inventory + conceptual model | Data/Security reviewer |
| VF-06 | Open evidence | NFR-05/07/08 และ interfaces มี owner/evidence plan | OI register | Instructor/Product owner |

## 12. Review Gate

ผล: **PASS — Baseline Candidate**

- 15 FR / 10 BR / 8 NFR / 13 DR มี disposition
- 12 US / 10 UC / 24 AC trace กลับได้
- Partial/Extension/TBD คงอยู่
- OI-01–OI-08 มี owner/action/evidence

## Appendix A — Requirement Disposition

| ID | Disposition | SRS | Reason/status |
|---|---|---|---|
| FR-01 | Included | หัวข้อ 3 | CAP-01; Detailed |
| FR-02 | Issue/Partial | หัวข้อ 3 | CAP-01; Detailed |
| FR-03 | Included | หัวข้อ 3 | CAP-02; Detailed |
| FR-04 | Included | หัวข้อ 3 | CAP-02/03; Detailed |
| FR-05 | Issue/Partial | หัวข้อ 3 | CAP-05/07; Partial |
| FR-06 | Included | หัวข้อ 3 | CAP-03/04; Detailed |
| FR-07 | Extension | หัวข้อ 3 | CAP-04; Detailed/Extension |
| FR-08 | Issue/Partial | หัวข้อ 3 | CAP-05; Partial |
| FR-09 | Issue/Partial | หัวข้อ 3 | CAP-07; Cross-cutting |
| FR-10 | Extension | หัวข้อ 3 | CAP-08; Partial/Extension |
| FR-11 | Included | หัวข้อ 3 | CAP-01/08; Supporting |
| FR-12 | Included | หัวข้อ 3 | CAP-06; Detailed |
| FR-13 | Included | หัวข้อ 3 | CAP-06; Detailed |
| FR-14 | Extension | หัวข้อ 3 | CAP-06/07; Extension |
| FR-15 | Issue/Partial | หัวข้อ 3 | CAP-07; Partial |
| BR-01 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| BR-02 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| BR-03 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| BR-04 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| BR-05 | Extension | หัวข้อ 4 | Authorized Teaching Rule; Detailed/Extension |
| BR-06 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| BR-07 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| BR-08 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| BR-09 | Issue/Partial | หัวข้อ 4 | Authorized Teaching Rule; Partial |
| BR-10 | Included | หัวข้อ 4 | Authorized Teaching Rule; Detailed |
| NFR-01 | Included | หัวข้อ 5 | Cross-cutting/Partial |
| NFR-02 | Included | หัวข้อ 5 | Cross-cutting/Partial |
| NFR-03 | Included | หัวข้อ 5 | Detailed/Cross-cutting |
| NFR-04 | Included | หัวข้อ 5 | Detailed |
| NFR-05 | Issue/TBD | หัวข้อ 5 | TBD |
| NFR-06 | Issue/TBD | หัวข้อ 5 | Cross-cutting/TBD |
| NFR-07 | Issue/TBD | หัวข้อ 5 | TBD |
| NFR-08 | Issue/TBD | หัวข้อ 5 | TBD |
| DR-01 | Included | หัวข้อ 6 | UserReference; Supporting |
| DR-02 | Issue/Partial | หัวข้อ 6 | RoleAssignment; Partial |
| DR-03 | Included | หัวข้อ 6 | OrganizationalUnit; Supporting |
| DR-04 | Included | หัวข้อ 6 | ResourceType; Detailed/Supporting |
| DR-05 | Included | หัวข้อ 6 | Resource; Detailed |
| DR-06 | Included | หัวข้อ 6 | AvailabilityBlock; Detailed/Supporting |
| DR-07 | Included | หัวข้อ 6 | BookingRequest; Detailed |
| DR-08 | Issue/Partial | หัวข้อ 6 | RequestRevision; Partial |
| DR-09 | Included | หัวข้อ 6 | DecisionRecord; Detailed |
| DR-10 | Included | หัวข้อ 6 | FulfillmentRecord; Detailed |
| DR-11 | Included | หัวข้อ 6 | ConditionRecord; Detailed |
| DR-12 | Issue/Partial | หัวข้อ 6 | Notification; Cross-cutting/Partial |
| DR-13 | Included | หัวข้อ 6 | AuditEvent; Cross-cutting |

## Appendix B — AI Use Disclosure

AI ช่วยจัดโครง สร้างภาพ และตรวจ trace ผู้สอนเป็นผู้ยืนยัน Teaching Baseline และต้อง review ก่อนประกาศ baseline

