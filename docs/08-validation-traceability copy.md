# 08 — Validation, Traceability and Change Management
> **Team:** ENGSE206 Group 07 | Case 07 — Student-teamwork-task-tracking
> **Activity:** Requirement Baseline Review & Readiness Gate (Week 06)

---

## 1. Artefact Health Check (ตรวจคลังชิ้นงาน)

| เอกสาร | สิ่งที่ต้องมีอยู่ข้างใน | สถานะ |
| :--- | :--- | :---: |
| **docs/01 Problem Brief** | Goal เชิงผลลัพธ์, Pain points, Stakeholder เริ่มต้น, NFR เริ่มต้น | [x] ครบ |
| **docs/02 Stakeholder/Scope** | Stakeholder map, Context diagram, In/Out scope, Constraints | [x] ครบ |
| **docs/03 Elicitation/Interview** | Objectives, คำถาม 10–12 ข้อ, Bias check | [x] ครบ |
| **docs/04 Evidence Log** | หลักฐานติด tag, Conflict + ผลเจรจา, Requirement candidates | [x] ครบ |
| **docs/05 Backlog** | FR/NFR + Source + Priority + Acceptance measure | [x] ครบ |

---

## 2. กรณีศึกษาอ้างอิง (Case X Reference)

| ขั้น | เนื้อหา (Case X) | อ้างอิง | ตรวจ |
|---|---|---|:---:|
| **Problem** | ผู้จัดจองห้อง+อุปกรณ์หลายที่ ทำให้จองชนและตกหล่น | `docs/01` · PB-02 | ✔ |
| **Stakeholder** | ผู้จัดกิจกรรม, เจ้าหน้าที่ห้อง | `docs/02` · ST-01/03 | ✔ |
| **Evidence** | สัมภาษณ์: “เคยจองห้องชนกับอีกกิจกรรม” | `docs/04` · E-07 | ✔ |
| **Need** | อยากเห็นสถานะห้อง/อุปกรณ์ว่างในหน้าจอเดียว | RC-04 | ✔ |
| **FR/NFR** | **FR-05:** ระบบต้องแสดงห้อง/อุปกรณ์ว่างตามช่วงเวลา | `docs/05` | ✔ |
| **Priority** | **Must** (กันจองชน = คุณค่าหลัก) | `docs/05` | ✔ |

---

## 3. ผลการตรวจสอบ Traceability Audit (กลุ่ม 07)

| Req ID | มาจาก Evidence / Issue | ผูกกับ Stakeholder | Need / Candidate (RC) | ลากครบ? |
|---|---|---|---|:---:|
| **FR-01** | E-01 | สมาชิกกลุ่ม, หัวหน้ากลุ่ม | RC-01 (ต้องการเห็นรายการงานและกำหนดส่งของตนเอง) | [x] ครบ |
| **FR-04** | E-02 | หัวหน้ากลุ่ม | RC-04 (ต้องการให้แนบหลักฐานเมื่อทำงานเสร็จ) | [x] ครบ |
| **NFR-01** | IS-01 | สมาชิกกลุ่ม | RC-08 (แสดงประวัติการทำงานด้วยภาษาที่เป็นกลาง) | [x] ครบ |

**รายการช่องว่าง (Gap) / Open Questions ที่พบ:**
* ไม่พบช่องโหว่ Requirement ระดับ Must ทุกข้อสามารถตรวจสอบย้อนกลับถึงหลักฐานและข้อตกลงได้ครบถ้วน

---

## 4. Quality & MoSCoW Check (เกณฑ์คุณภาพ)

| เกณฑ์การตรวจสอบ | คำถามสำหรับใช้ตรวจ (Checklist) |
| :--- | :--- |
| **วัด/ทดสอบได้ (Verifiable)** | มี “ตัวเลข/เงื่อนไข” ที่ตรวจรับได้ไหม? (เช่น ภายในกี่วินาที, กี่คลิก) |
| **ไม่กำกวม (Unambiguous)** | อ่านแล้วตีความได้ทางเดียวไหม? เลี่ยงคำว่า “เร็ว/ง่าย/สะดวก” ลอยๆ |
| **หนึ่งข้อหนึ่งเรื่อง (Atomic)** | มัดหลายเรื่องในข้อเดียวหรือเปล่า? (ถ้าใช่ ให้แยกข้อ) |
| **มีที่มา (Traceable)** | ผ่านช่วงที่ 2 มาแล้ว — มี source / stakeholder ชัดเจน |
| **MoSCoW สมเหตุสมผล** | ทำไมข้อนี้ถึง Must? ถ้าตัดออกแล้วระบบยัง “ใช้ได้จริง” ไหม? |
| **Scope ไม่บวม** | เกินสิ่งที่ Case Card อนุญาตไหม? (เช่น เพิ่มระบบที่ out of scope ไปแล้ว) |

---

## 5. ใบตรวจข้ามทีม (Cross-Review Form)
**ประเมินผลงานของ:** กลุ่ม 07 (ระบบติดตามงานกลุ่มและการแบ่งบทบาทสมาชิก)

| สิ่งที่ตรวจ | สถานะ | ข้อเสนอแนะ / หมายเหตุ (อ้าง ID) |
| :--- | :---: | :--- |
| **ทุก Must มีสาย Traceable ครบ** | [x] ผ่าน &nbsp; [ ] ไม่ผ่าน | Requirement ระดับ Must เชื่อมโยงถึง E-xx และ RC-xx ชัดเจน |
| **FR/NFR วัด/ทดสอบได้** | [x] ผ่าน &nbsp; [ ] ไม่ผ่าน | มีเงื่อนไขการตรวจรับชัดเจน ไม่ใช้คำกำกวม |
| **ไม่มี Requirement กำกวม/ซ้ำ** | [x] ผ่าน &nbsp; [ ] ไม่ผ่าน | แต่ละข้อระบุหน้าที่เดียวชัดเจน (Atomic) |
| **Scope ตรงกับ Case Card** | [x] ผ่าน &nbsp; [ ] ไม่ผ่าน | มีการตัด Out of scope (Chat, Video call) ออกถูกต้อง |
| **MoSCoW มีเหตุผลรองรับ** | [x] ผ่าน &nbsp; [ ] ไม่ผ่าน | ลำดับความสำคัญสอดคล้องกับคุณค่าหลักของระบบ |

---

## 6. การประเมินผ่านด่าน (Readiness Gate) & ชิ้นงานส่งมอบ

### ประเมินความพร้อม (Readiness Gate)
| # | เกณฑ์ผ่านด่าน | หลักฐาน (Commit / Link) | สถานะ |
|:---:|:---|:---|:---:|
| 1 | เอกสาร `docs/01`–`05` ครบและอัปเดตล่าสุด | Main branch update | [x] ผ่าน |
| 2 | ทุก Requirement ที่เป็น Must ไล่ถึง Evidence + Stakeholder ได้ | ตารางในข้อ 3 ของไฟล์นี้ | [x] ผ่าน |
| 3 | FR/NFR ทุกข้อวัด/ทดสอบได้ ไม่กำกวม | `docs/05-requirement-backlog.md` | [x] ผ่าน |
| 4 | ผ่าน Peer Cross-Review อย่างน้อย 1 รอบ | ผลการประเมินในข้อ 5 | [x] ผ่าน |
| 5 | Commit + Tag `baseline-v1.0` และบันทึก Worklog | `git tag baseline-v1.0` | [x] ผ่าน |

### สรุปชิ้นงานที่ต้องส่งมอบ (Deliverables)
| ชิ้นงาน | Path ใน Team Repo | สถานะ |
| :--- | :--- | :---: |
| Backlog ที่แก้แล้ว | `docs/05-requirement-backlog.md` | [x] |
| ตาราง Traceability + Gap | `docs/08-validation-traceability.md` | [x] |
| ผล Health Check + ใบ Cross-Review | `evidence/week-05/baseline-review/` | [x] |
| บันทึกการตัดสินใจ | `project-management/decision-log.md` | [x] |
| Worklog บทบาทรายคน | `project-management/team-worklog.md` | [x] |
| Reflection รายคน | `feedback/15-individual-reflection.md` | [x] |
| Baseline tag | `git tag baseline-v1.0` | [x] |