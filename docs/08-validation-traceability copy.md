# 08 — Requirement_Baseline_Review_Studio_TH

> **Week 6**

## 1. Validation Plan

### 1. Artefact Health Check (ตรวจคลังชิ้นงาน)

| เอกสาร | ต้องมีอะไรอยู่ข้างใน | สถานะ |
| :--- | :--- | :--- |
| **docs/01 Problem Brief** | goal เชิงผลลัพธ์, pain points, stakeholder เริ่มต้น, NFR เริ่มต้น | [ X ] ครบ &nbsp;&nbsp; [ ] ต้องแก้ |
| **docs/02 Stakeholder/Scope** | stakeholder map, context diagram, in/out scope, constraints | [ X ] ครบ &nbsp;&nbsp; [ ] ต้องแก้ |
| **docs/03 Elicitation/Interview** | objectives, คําถาม 10–12 ข้อ, bias check | [ X ] ครบ &nbsp;&nbsp; [ ] ต้องแก้ |
| **docs/04 Evidence Log** | หลักฐานติด tag, conflict + ผลเจรจา, requirement candidates | [ X ] ครบ &nbsp;&nbsp; [ ] ต้องแก้ |
| **docs/05 Backlog** | FR/NFR + source + priority + acceptance measure | [ ] ครบ &nbsp;&nbsp; [ X ] ต้องแก้ |

## 2. SE Career Talk

| ขั้น | เนื้อหา (Case X) | อ้างอิง | ตรวจ |
|---|---|---|:---:|
| **Problem** | ผู้จัดจองห้อง+อุปกรณ์หลายที่ ทำให้จองชนและตกหล่น | `docs/01` · PB-02 | ✔ |
| **Stakeholder** | ผู้จัดกิจกรรม, เจ้าหน้าที่ห้อง | `docs/02` · ST-01/03 | ✔ |
| **Evidence** | สัมภาษณ์: “เคยจองห้องชนกับอีกกิจกรรม” | `docs/04` · E-07 | ✔ |
| **Need** | อยากเห็นสถานะห้อง/อุปกรณ์ว่างในหน้าจอเดียว | RC-04 | ✔ |
| **FR/NFR** | **FR-05:** ระบบต้องแสดงห้อง/อุปกรณ์ว่างตามช่วงเวลา | `docs/05` | ✔ |
| **Priority** | **Must** (กันจองชน = คุณค่าหลัก) | `docs/05` | ✔ |

## 3. “Open Question / Assumption”

## ผลการตรวจสอบ Traceability Audit (Requirement Baseline Review)

| Req ID | มาจาก Evidence / Issue | ผูกกับ Stakeholder | Need/Candidate (RC) | ลากครบ? |
|---|---|---|---|:---:|
| **FR-01** | E-01 | สมาชิกกลุ่ม, หัวหน้ากลุ่ม | RC-01 (ต้องการเห็นรายการงานและกำหนดส่งของตนเอง) | [x] ครบ |
| **FR-04** | E-02 | หัวหน้ากลุ่ม | RC-04 (ต้องการให้แนบหลักฐานเมื่อทำงานเสร็จ) | [x] ครบ |
| **NFR-01** | IS-01 | สมาชิกกลุ่ม | RC-08 (แสดงประวัติการทำงานด้วยภาษาที่เป็นกลาง) | [x] ครบ |

**รายการช่องว่าง (Gap) / Open Questions ที่พบ:**
* (ไม่พบช่องโหว่ Requirement ระดับ Must ทุกข้อสามารถตรวจสอบย้อนกลับถึงหลักฐานและข้อตกลงได้ครบถ้วน)

## 4. Quality & MoSCoW Check

### ตรวจด้วยเกณฑ์คุณภาพ 4 ข้อ + ความสมเหตุสมผลของ MoSCoW + scope ไม่บวมเกิน Case Card

| เกณฑ์การตรวจสอบ | คำถามสำหรับใช้ตรวจ (Checklist) |
| :--- | :--- |
| **วัด/ทดสอบได้ (Verifiable)** | มี “ตัวเลข/เงื่อนไข” ที่ตรวจรับได้ไหม? (เช่น ภายในกี่วินาที, กี่คลิก) |
| **ไม่กำกวม (Unambiguous)** | อ่านแล้วตีความได้ทางเดียวไหม? เลี่ยงคำว่า “เร็ว/ง่าย/สะดวก” ลอยๆ |
| **หนึ่งข้อหนึ่งเรื่อง (Atomic)** | มัดหลายเรื่องในข้อเดียวหรือเปล่า? (ถ้าใช่ ให้แยกข้อ) |
| **มีที่มา (Traceable)** | ผ่านช่วงที่ 2 มาแล้ว — มี source / stakeholder ชัดเจน |
| **MoSCoW สมเหตุสมผล** | ทำไมข้อนี้ถึง Must? ถ้าตัดออกแล้วระบบยัง “ใช้ได้จริง” ไหม? |
| **Scope ไม่บวม** | เกินสิ่งที่ Case Card อนุญาตไหม? (เช่น เพิ่มระบบที่ out of scope ไปแล้ว) |

## 5. Cross-Review Form

### ใบตรวจข้ามทีม (Cross-Review Form)
**ประเมินผลงานของ:** กลุ่ม 07 (ระบบติดตามงานกลุ่มและการแบ่งบทบาทสมาชิก)

| สิ่งที่ตรวจ | สถานะ | ข้อเสนอแนะ / หมายเหตุ (อ้าง ID) |
| :--- | :--- | :--- |
| **ทุก Must มีสาย Traceable ครบ** | [ ] ผ่าน &nbsp;&nbsp; [ ] ไม่ผ่าน | |
| **FR/NFR วัด/ทดสอบได้** | [ ] ผ่าน &nbsp;&nbsp; [ ] ไม่ผ่าน | |
| **ไม่มี Requirement กำกวม/ซ้ำ** | [ ] ผ่าน &nbsp;&nbsp; [ ] ไม่ผ่าน | |
| **Scope ตรงกับ Case Card** | [ ] ผ่าน &nbsp;&nbsp; [ ] ไม่ผ่าน | |
| **MoSCoW มีเหตุผลรองรับ** | [ ] ผ่าน &nbsp;&nbsp; [ ] ไม่ผ่าน | |

## 6. Readiness Gate และ Reflection

- [ ] [งานที่ต้องปรับก่อนเริ่ม design]### ประเมินการผ่านด่าน (Readiness Gate)
*ประเมินกันเองด้วยหลักฐานว่า “ผ่านด่าน” ครบทั้ง 5 ข้อหรือยัง ทำเครื่องหมายและแนบลิงก์/commit ที่พิสูจน์ได้*

| # | เกณฑ์ผ่านด่าน (Readiness Gate) | หลักฐาน (แนบลิงก์ / Commit) | สถานะ |
|:---:|:---|:---|:---:|
| 1 | เอกสาร `docs/01`–`05` ครบและอัปเดตล่าสุด | [ระบุลิงก์/Commit] | [ ] ผ่าน |
| 2 | ทุก requirement ที่เป็น Must ไล่ถึง Evidence + Stakeholder ได้ | [ระบุลิงก์/Commit] | [ ] ผ่าน |
| 3 | FR/NFR ทุกข้อวัด/ทดสอบได้ ไม่กำกวม | [ระบุลิงก์/Commit] | [ ] ผ่าน |
| 4 | ผ่าน Peer Cross-Review อย่างน้อย 1 รอบ และแก้ตามที่ตกลง | [ระบุลิงก์/Commit] | [ ] ผ่าน |
| 5 | commit + tag `baseline-v1.0` และอัปเดต worklog/decision-log | [ระบุลิงก์/Commit] | [ ] ผ่าน |
## ผลการตรวจสอบ Traceability Audit (Requirement Baseline Review)

### สรุปชิ้นงานที่ต้องส่ง (Deliverables)

| ชิ้นงาน | Path ใน Team Repo | สถานะ |
| :--- | :--- | :---: |
| Backlog ที่แก้แล้ว | `docs/05-requirement-backlog.md` | [ ] |
| ตาราง Traceability + Gap | `docs/08-validation-traceability.md` | [ ] |
| ผล Health Check + ใบ Cross-Review | `evidence/week-05/baseline-review/` | [ ] |
| บันทึกการตัดสินใจ | `project-management/decision-log.md` | [ ] |
| Worklog บทบาทรายคน | `project-management/team-worklog.md` | [ ] |
| Reflection รายคน | `feedback/15-individual-reflection.md` | [ ] |
| Baseline tag | `git tag baseline-v1.0` | [ ] |
## ผลการตรวจสอบ Traceability Audit (Requirement Baseline Review)

| Req ID | มาจาก Evidence (E-xx) | ผูกกับ Stakeholder | Need/Candidate (RC) | ลากครบ? |
|---|---|---|---|---|
| FR-01 | E-01 | สมาชิกกลุ่ม | UN-01 | [ / ] ครบ |
| FR-03 | E-01 | หัวหน้ากลุ่ม | UN-03 | [ / ] ครบ |
| NFR-01 | E- | ST- | RC- | [ ] ครบ |

**รายการช่องว่าง (Gap) / Open Questions ที่พบ:**
* (ถ้าไล่สายไม่ครบ ให้จดคำถามหรือข้อสันนิษฐานไว้ตรงนี้ เพื่อยกไปคุยกันต่อใน Week 6)