# Baseline Review Submission — Requirement Baseline v1.0

> ไฟล์นำส่งกิจกรรม Requirement Baseline Review & Readiness Gate (Week 06 Consolidation)
> วางไว้ที่: `submissions/baseline-review-submission.md`
> 
> **ขั้นตอนการส่ง:** กรอกไฟล์นี้ให้เรียบร้อย → `git commit` → `git tag -a baseline-v1.0 -m "Lock requirements baseline v1.0"` → `git push origin main` + `git push origin baseline-v1.0`

---

## 1. Assignment Source & Repository Info

| Field | Value |
|---|---|
| **Assignment ID** | `W05-RBR-v1.0` / `W06-Consolidation` |
| **Team / Case** | Group 07 — Case 07: ระบบติดตามงานกลุ่มและการแบ่งบทบาทสมาชิก (Student-teamwork-task-tracking) |
| **Repository URL** | https://github.com/ThadakornDev01/ENGSE206_Group07_student-teamwork-task-tracking/tree/main/docs |
| **Baseline Tag** | `baseline-v1.0` |
| **Tag Release URL** | https://github.com/ThadakornDev01/ENGSE206_Group07_student-teamwork-task-tracking/tags |
| **Submitted at** | 19/8/2569 01:40 |

---

## 2. Deliverables — ชิ้นงานส่งมอบ (Pinned ที่ baseline-v1.0)

> *อาจารย์ผู้สอนสามารถคลิกเปิดดูไฟล์ชิ้นงานที่ถูกล็อกเวอร์ชันไว้ที่ `baseline-v1.0` ได้โดยตรงจากตารางนี้*

| # | ชิ้นงาน | Path ใน Repository | สถานะ |
|:---:|---|---|:---:|
| 1 | **Backlog ที่ปรับปรุงแล้ว** | `docs/05-requirement-backlog.md` | [x] ครบ |
| 2 | **ตาราง Traceability Matrix + Health Check** | `docs/08-validation-traceability.md` | [x] ครบ |
| 3 | **หลักฐาน Peer Cross-Review** | `evidence/week-05/baseline-review/peer-review-group07.md` | [x] ครบ |
| 4 | **บันทึกการตัดสินใจทางวิศวกรรม** | `project-management/decision-log.md` | [x] ครบ |
| 5 | **Worklog บันทึกบทบาทและเวลา** | `project-management/team-worklog.md` | [x] ครบ |
| 6 | **Individual Reflection รายบุคคล** | `feedback/15-individual-reflection.md` | [x] ครบ |
| 7 | **Baseline Tag** | `git tag baseline-v1.0` | [x] ครบ |

---

## 3. เกณฑ์ผ่านด่าน (Readiness Gate Checklist)

| # | เกณฑ์ผ่านด่าน | คำอธิบายและหลักฐาน | ผลประเมิน |
|:---:|---|---|:---:|
| 1 | เอกสาร `docs/01`–`05` ครบถ้วน | ตรวจสอบผ่าน Artefact Health Check ใน `docs/08` พบว่าครบถ้วนสมบูรณ์ | [x] ผ่าน |
| 2 | Requirement ระดับ Must มี Traceability ครบ | ทุก Must (`FR-01`, `FR-04`, `FR-08`, `NFR-01`, `NFR-02`, `NFR-05`) เชื่อมโยงถึง Evidence และ Need ชัดเจน | [x] ผ่าน |
| 3 | FR/NFR ทุกข้อวัดผลได้ ไม่กำกวม | มีการระบุ Acceptance Criteria / Measure ชัดเจนใน `docs/05` | [x] ผ่าน |
| 4 | ผ่าน Peer Cross-Review | ได้รับการตรวจทานข้ามกลุ่มและบันทึกผลลงในโฟลเดอร์ Evidence | [x] ผ่าน |
| 5 | Lock Baseline Tag & Worklog | ทำการ Commit, บันทึก Log และ Push Tag `baseline-v1.0` เรียบร้อย | [x] ผ่าน |

---

## 4. สรุปประเด็นสำคัญและการเปลี่ยนแปลง (Summary of Changes)

- **การล็อก Scope ระบบ:** ยืนยันการตัดระบบสนทนาภายใน (In-app Chat), Video Call และการเชื่อมต่อระบบเกรดมหา'ลัย ออกไปเป็น Won't (Out of scope) ตามข้อตกลง เพื่อให้ระบบโฟกัสเฉพาะการ Track งานและเก็บหลักฐาน
- **การจัดการสิทธิ์ของอาจารย์ (IS-02):** ออกแบบให้อาจารย์เห็นเฉพาะหน้า Dashboard สรุปภาพรวมและงานที่เสร็จแล้ว (Done) เพื่อสร้างพื้นที่ปลอดภัย (Safe space) ในการทำงานของนักศึกษา
- **ความสมบูรณ์ของ Requirement:** ตรวจสอบและเพิ่มเกณฑ์การตรวจรับ (Acceptance Criteria) ให้กับ FR และ NFR ทุกข้อ ทำให้พร้อมต่อยอดไปทำ Use Case Diagram ในสัปดาห์ที่ 6 ทันที

---

## 5. Team Contribution (บทบาทและความรับผิดชอบในกิจกรรม)

| ชื่อ-นามสกุล | บทบาทในกิจกรรม | ภาระงานจริงที่รับผิดชอบ | สัดส่วน/หลักฐาน |
|---|---|---|:---:|
| **นายธดากรณ์ เชื้อโต่ง** | Lead Facilitator, Auditor & Gatekeeper | ดำเนินการตรวจสอบ Health check, จัดทำตาราง Traceability Matrix, ปรับปรุง Backlog, จัดทำไฟล์ docs/08, ควบคุมเกณฑ์ Readiness Gate และเป็นผู้ Commit / Push Tag | **รับผิดชอบหลัก (70%)** <br>`[Commit / docs/08, docs/05, submissions]` |
| **นายคมสันต์ ขันคำกาศ** | Co-Auditor / Reviewer | ร่วมอ่านตรวจทานความถูกต้องของ Traceability ใน FR-01, FR-04 และตรวจฟอร์ม Peer Cross-Review | **ช่วยตรวจทาน (25%)** <br>`[Commit / Cross-Review]` |
| **นายญาณากร หวังระบอบ** | Brief Reviewer | ร่วมอ่านทบทวน Problem Brief ในช่วงเริ่มต้นกิจกรรม (ติดภารกิจระหว่างกิจกรรมหลัก) | **มีส่วนร่วมน้อย (5%)** <br>`[Commit / docs/01]` |

---

## 6. Gap / Open Questions (สิ่งที่ยกไปทำต่อใน Week 6)

- **[OQ-01] การแปลงไปสู่ Use Case Model:** เตรียมนำ FR-01 ถึง FR-08 ไปแตกเป็น Use Case Descriptions และระบุ Actor (สมาชิกกลุ่ม, หัวหน้ากลุ่ม, อาจารย์ผู้สอน) ใน Week 06
- **[OQ-02] Definition of Done:** ยืนยันว่าการอัปโหลดไฟล์หลักฐาน (FR-04) รองรับได้ทั้งแบบไฟล์ตรง, ลิงก์ Drive/GitHub และข้อความอธิบาย
