# README

A simple place to find, save, and apply for prestigious fellowships. Check out the deployed app on Heroku (fellowships4you-e1d15668d82e.herokuapp.com/)



* Ruby version
3.1.2
* Rails version
7.0.3

require 'open-uri'
require 'json'
require 'date'

User.destroy_all
Scholarship.destroy_all

user1 = User.create(email: 'carson@fellowships4you.com', password: '121212')
puts "User created successfully"


scholarships = [
  {
    name: '🇬🇧 Rhodes Scholarship',
    description: 'The Rhodes Scholarships are the oldest and most celebrated international fellowship awards in the world. Each year 32 young students from the U.S. are selected as Rhodes Scholars. The Rhodes Scholarship funds two years of graduate study at Oxford University in most fields (excluding professional degree programs such as law and medicine).',
    url: 'http://www.rhodesscholar.org/',
    due_date: '01/10/2024',
    value: 1
  },
  {
    name: '🇬🇧 Marshall Scholarship',
    description: 'The Marshall Scholarship funds one or two years of graduate study at a wide range of institutions in the United Kingdom. Most fields of study are supported. Professional degrees, such as those in law, business, and medicine are excluded, as are second baccalaureate degrees.',
    url: 'http://www.marshallscholarship.org/',
    due_date: '15/09/2024',
    value: 1
  },
  {
    name: '🇬🇧 Gates-Cambridge Scholarship',
    description: 'The Gates Cambridge Scholarship supports one to three years of post-baccalaureate study in any field at the University of Cambridge. Students must apply for admission as a postgraduate student to the University of Cambridge and a Gates Cambridge Scholarship at the same time, with one application form, via the Graduate Admissions Office. Applicants must demonstrate exceptional academic achievement, potential for scholarly development, and a commitment to use the benefits of their education for the common good. Citizens from any country other than the UK are eligible.',
    url: 'https://www.gatescambridge.org/',
    due_date: '10/10/2024',
    value: 1
  },
  {
    name: '🇬🇧 Churchill Scholarship',
    description: 'The Churchill Scholarship provides around $60,000 for a year of graduate study in engineering, mathematics, or science at Churchill College, Cambridge University, plus a $1500 travel allowance and the possibility of a $2000 Special Research Grant, approved in advance by the Foundation, to cover research expenses. Fifteen scholarships are awarded annually.',
    url: 'https://www.churchillscholarship.org/the-scholarship#Apply',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🇮🇪 Mitchell Scholarship',
    description: 'The George J. Mitchell Scholarship supports one year of graduate study in any field at one of the eleven institutions of higher learning on the island of Ireland. This includes the seven universities in the Republic of Ireland, two institutes in Dublin, and two universities in Northern Ireland (Queen\'s University Belfast and the Ulster University). Up to 12 Scholars are selected each year.',
    url: 'http://www.us-irelandalliance.org/mitchellscholarship',
    due_date: '15/09/2024',
    value: 1
  },
  {
    name: '🇺🇸 Stanford Knight-Henessy Scholarship',
    description: 'The Knight-Hennessy scholarship offers up to three years of funding for a graduate degree in any of Stanford University\'s 125 degree programs, from PhD\'s in education, engineering, the humanities, and the natural sciences to professional degrees such as the MS, JD, MD, MBA, or MFA. In addition to their graduate studies, scholars participate in leadership development programs and immersive study trips and have mentor opportunities with major leaders in the business, government, and nonprofit fields. The scholarship is open to citizens from any country. Those who are interested must have earned an undergraduate degree in 2014 or later to be eligible to apply for acceptance in the fall of 2020. Institutional endorsement is not required.',
    url: 'https://knight-hennessy.stanford.edu/',
    due_date: '12/10/2024',
    value: 1
  },
  {
    name: '🇺🇸 Soros Fellowship for New Americans',
    description: 'Up to two years of full-time graduate study in any field for new citizens or first-generation children of non-US citizens.',
    url: 'https://www.pdsoros.org/',
    due_date: '15/10/2024',
    value: 1
  },
  {
    name: '🇨🇳 Schwarzman Scholarship',
    description: 'Schwarzman Scholars is a highly-selective, fully-funded Master’s degree in Global Affairs program based at the distinguished Tsinghua University in Beijing. Schwarzman Scholars is an education and leadership development program designed to ensure that the next generation of business, political, and non-profit leaders around the world have a deeper understanding of how their fields are influenced by China’s emerging global role. Citizens of all countries are eligible. Candidates must be at least 18 but not yet 29 years of age. English proficiency test scores must be submitted if English is not the applicant’s native language. ',
    url: 'https://connect.schwarzmanscholars.org/apply/',
    due_date: '20/09/2024',
    value: 1
  },
  {
    name: '🇨🇳 Yenching Academy Scholarship',
    description: 'Provides funding to pursue a two-year master’s degree in China Studies from Peking University. Applicants from diverse fields come together to study ancient, modern, and contemporary China in an English-taught program.',
    url: 'https://yenchingacademy.pku.edu.cn/',
    due_date: '01/12/2024',
    value: 1
  },
  {
    name: '🇯🇵 Watanabe Study Abroad Scholarship',
    description: 'Scholarship provides financial assistance up to the full cost of attendance for study abroad in Japan to undergraduates and graduate students in need of financial support. ',
    url: 'https://www.usjapancouncil.org/watanabe-scholarship/',
    due_date: '15/02/2024',
    value: 1
  },
  {
    name: '🇺🇸 🎖 Harry S. Truman Scholarship',
    description: 'The Harry S. Truman Scholarship provides funding for graduate school as preparation for a career in government or public service. Truman Scholars receive up to $30,000 for graduate studies. In addition, they participate in leadership development programs and have special opportunities for internships and employment with the federal government. About 60 scholarships are awarded each year.',
    url: 'http://www.truman.gov/',
    due_date: '15/01/2024',
    value: 1
  },
  {
    name: '🇺🇸 James Madison Fellowship',
    description: 'The James Madison Graduate Fellowship Program is a federally-endowed fellowship program designed to strengthen instruction about the U.S. Constitution at the secondary school level. Graduating seniors without teaching experience who intend to pursue a career in teaching American history or political science can receive funding for two years of master\'s level graduate study of the framing and history of the Constitution. Fellows must agree to teach full-time in a secondary school for no less than one year for each full year of fellowship support. U.S. citizenship required.',
    url: 'http://www.jamesmadison.gov/',
    due_date: '01/03/2024',
    value: 1
  },
  {
    name: '🇺🇸 Beinecke Scholarship',
    description: 'The Beinecke Scholarship enables students in the traditional liberal arts to pursue graduate school opportunities they may not otherwise have been able to pursue. The award provides $4,000 immediately prior to attending graduate school and a maximum stipend of $15,000 per year while in graduate school. About 20 awards are given annually.',
    url: 'https://beineckescholarship.org/',
    due_date: '08/02/2024',
    value: 1
  },
  {
    name: '🇬🇧 Keasbey Scholarship',
    description: 'Periodically Cornell, Harvard, Dartmouth, Brown, Haverford, Middlebury, Amherst, Bowdoin, Swarthmore, Wesleyan, and Yale Universities are invited to submit two nominations each to the Keasbey Scholarship competition. One award will be granted. The award provides support for two years of graduate work at one of four British Universities: Oxford, Cambridge, University of Edinburgh, or University College of Wales at Aberystwyth. ',
    url: 'http://keasbeyfoundation.org/eligibility.php',
    due_date: '10/10/2024',
    value: 1
  },
  {
    name: '🌏 Luce Scholarship',
    description: 'The award provides for a year\'s experience in Asia in an internship arranged for each Scholar on the basis of his/her specific interest, background, qualifications, and experience. The program was designed as a cultural experience for young leaders who have had no prior experience of Asia and who might not otherwise have an opportunity in the normal course of their careers to come to know Asia or their Asian counterparts and contemporaries... both to broaden their professional perspective and to sharpen their perceptions of Asia, of America, and of themselves. Placements can be made in: Cambodia, China, Hong Kong, India, Indonesia, Japan, Laos, Malaysia, Mongolia, Myanmar, Nepal, Philippines, Singapore, South Korea, Sri Lanka, Taiwan, Thailand, Timor Leste, and Vietnam. Luce Scholars are chosen from 75 colleges and universities. About 18 awards are made each year.',
    url: 'https://www.hluce.org/programs/luce-scholars/',
    due_date: '15/10/2024',
    value: 1
  },

  {
    name: '🇺🇸 Udall Scholarship',
    description: 'The Udall Scholarship Program honors the public service legacies of Morris K. Udall, Congressman from Arizona (1961-1991), and Stewart L. Udall, Secretary of the Interior (1961-1969). The scholarship covers eligible expenses for tuition, fees, books, and room and board, up to a maximum of $7,000. Juniors are eligible for one year of support; sophomores may be renominated during their junior year and compete for a second year of support. Approximately 60 scholarships are awarded each year.',
    url: 'http://udall.gov/',
    due_date: '01/03/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 Thomas Pickering Fellowship',
    description: 'Full-ride Masters program with a track to the United States Foreign Diplomatic Service',
    url: 'https://pickeringfellowship.org/',
    due_date: '15/09/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 🗽 Charles Rangel Fellowship',
    description: 'Diversity fellowship for a Masters and track to the United States Foreign Diplomatic Service',
    url: 'http://rangelprogram.org/',
    due_date: '15/09/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 Charles Rangel Undergraduate Summer Enrichment Program',
    description: 'Six-week summer program for undergraduate students intersted in international affairs.',
    url: 'http://rangelprogram.org/',
    due_date: '01/02/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 Foreign Affairs Information Technology Fellowship',
    description: 'A fellowship to fund a two-year master’s degree in an IT-related field for students who want a career in the Foreign Service as an Information Management Specialist. This two-year award includes two paid summer internships (one in Washington DC and one abroad). Applications from members of historically underrepresented groups in Foreign Service careers are encouraged.',
    url: 'https://www.faitfellowship.org/how-to-apply/',
    due_date: '31/01/2024',
    value: 1
  },
  {
    name: '🌐 Fulbright Scholarship',
    description: 'The Fulbright U.S. Student Program provides grants for individually designed study/research projects or for English Teaching Assistantships. The program  gives  recent graduates, Master’s candidates, Doctoral candidates, and young professionals opportunities for personal development through an international experience, while allowing them to engage in cultural exchange through direct contact with a wide cross section of individuals in the host country. Applications are welcome from all fields of study in all disciplines.',
    url: 'http://us.fulbrightonline.org/',
    due_date: '10/10/2024',
    value: 1
  },
  {
    name: '🌐 Fulbright Fogarty Fellows In Public Health',
    description: 'Public health and clinical research in resource-limited settings.',
    url: 'https://us.fulbrightonline.org/about/types-of-awards/fulbright-fogarty-fellowships-in-public-health',
    due_date: '01/10/2024',
    value: 1
  },
  {
    name: '🌐 Fulbright English Teaching Assistant',
    description: 'Teach English abroad.',
    url: 'http://us.fulbrightonline.org/about/types-of-grants/english-teaching-assistant-grants',
    due_date: '10/10/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 Payne International Development Fellowship',
    description: 'USAID Pathway and up to $104,000 in benefits over two years for graduate school, internships, and professional development',
    url: 'https://www.paynefellows.org/',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 🗣 Critical Language Scholarship',
    description: 'Intensive overseas language programs sponsored by the U.S. Department of State.',
    url: 'http://www.clscholarship.org/',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 🗣 Boren National Security Education Awards',
    description: 'Funding for intensive language study abroad.',
    url: 'https://www.borenawards.org/',
    due_date: '15/01/2024',
    value: 1
  },
  {
    name: '🌏 🗣 🌐 Blakemore Freeman Fellowships for Advanced Study of Asian Languages',
    description: 'Blakemore Freeman Fellowships are awarded for one academic year (two semesters or three quarters) of advanced level language study in East or Southeast Asia. Eligible languages are Chinese, Japanese, Korean, Indonesian, Khmer, Thai, and Vietnamese. Fellowships cover tuition, and a stipend for related educational expenses, basic living costs and transportation. The Blakemore Foundation makes grants for study only at specific language programs. Please refer to the current list of approved programs.',
    url: 'https://www.blakemorefoundation.org/language',
    due_date: '01/12/2024',
    value: 1
  },
  {
    name: '🌏 🗣 🌐 American Institute of India Studies Language Programs',
    description: 'The AIIS Language Program offers nine-month academic year, summer and semester courses at elementary to advanced levels in many languages, including several that are rarely taught outside of India. The eligibility requirements vary depending on the particular program.  Applications for AIIS language programs are available in mid-September and are due by December 31; the selection process is finished by late February.
    Courses regularly include: Bangla (Bengali), Gujarati, Hindi, Kannada, Malayalam, Marathi, Mughal Persian, Pali/Prakrit, Punjabi, Sanskrit, Tamil, Telugu, Urdu. In addition, instruction may be arranged in other languages such as: Kashmiri, Oriya, Sindhi, Tibetan',
    url: 'indiastudies.org/language-programs/',
    due_date: '01/31/2024',
    value: 1
  },
  {
    name: '🌐 🧑‍🏫 🗣 Fulbright Hays Fellowship for Non-Western Languages',
    description: 'Department of Education Fellowship for educators, administrators, pre and post doctoral students. Focused on research and training overseas on non-Western language and area studies.',
    url: 'http://eca.state.gov/fulbright/fulbright-programs/program-summaries/fulbright-hays-program',
    due_date: '01/02/2024',
    value: 1
  },
  {
    name: '🇩🇪 🗣 Congress Bundestag Youth Exchange (CBYX) Program',
    description: 'Provides one year of funding in Germany to cover two months of intensive German language study, one semester of classes in any academic field at a German university or school, and a three-month internship in your field.',
    url: 'https://culturalvistas.org/programs/abroad/congress-bundestag-youth-exchange-young-professionals/',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🇩🇪 🗣 🗺 German Chancellor Fellowship (Alexander Von Humboldt Foundation)',
    description: 'Provides funding for recent graduates to carry out a self-designed project in Germany in any field. German language proficiency is not required, although German language classes are provided during the grant period.',
    url: 'https://www.humboldt-foundation.de/en/apply/sponsorship-programmes/german-chancellor-fellowship',
    due_date: '15/10/2024',
    value: 1
  },
  {
    name: '🇺🇸 🧑‍🔬 Barry M. Goldwater Scholarship',
    description: 'The Goldwater Scholarship was established to foster and encourage excellence in the natural sciences, engineering, and mathematics in the U.S. Awards are made annually, each scholarship providing a maximum of $7500 per year for tuition, fees, books, and room and board. Sophomore applicants are eligible for two years of support, junior applicants for one year of support. Approximately 450 awards will be given annually through 2024.',
    url: 'https://goldwater.scholarsapply.org/',
    due_date: '15/01/2024',
    value: 1
  },
  {
    name: '🌐 🎵 Fulbright-mtvU awards',
    description: 'Research on international music culture',
    url: 'http://us.fulbrightonline.org/fulbright-mtvu-awards',
    due_date: '01/03/2024',
    value: 1
  },

  {
    name: '🇺🇸 🧑‍🔬 💰 Hertz Fellowship',
    description: 'The Hertz Foundation Graduate Fellowship is designed to foster the graduate-level studies of excellent young men and women who seem likely to become leaders in scientific and technological advances, exemplars of teaching skills in the applied physical sciences, and key contributors to the technological capability on which the well-being of the United States depends. Full-tuition equivalent for up to five years of funding valued at up to $250,000. Additional stipend if coordinated with other fellowships. $5,000 annual dependent childcare stipend.',
    url: 'https://www.hertzfoundation.org/the-fellowship/faq/',
    due_date: '28/10/2024',
    value: 1
  },
  {
    name: '🇺🇸 🧑‍🔬 🗽 Ford Foundation Fellowship',
    description: 'Diversity partnership with National Academy of Sciences for graduate study in STEM',
    url: 'https://sites.nationalacademies.org/PGA/FordFellowships/index.htm',
    due_date: '08/12/2024',
    value: 1
  },
  {
    name: '🇺🇸 🧑‍🔬 National Science Foundation Graduate Research Fellowship Program',
    description: 'Up to three years of support for STEM graduate education',
    url: 'https://nsfgrfp.org/applicants/',
    due_date: '10/10/2024',
    value: 1
  },
  {
    name: '🇺🇸 🧑‍🔬 ⚕️ National Institutes of Health Undergraduate Scholarship Program',
    description: 'Up to $20,000 in scholarship support per year to eligible undergraduates who are pursuing degrees in fields related to biomedical research.',
    url: 'https://www.training.nih.gov/programs/ugsp',
    due_date: '15/03/2024',
    value: 1
  },
  {
    name: '🇺🇸 🧑‍🔬 ⚕️ National Institutes of Health Postbaccalaureate Intramural Research Training Award',
    description: 'Provides recent college graduates who are planning to apply to graduate or professional (medical/dental/pharmacy/nursing/veterinary, etc.) school an opportunity to spend one or two years performing full-time research at the NIH',
    url: 'https://www.training.nih.gov/programs/postbac_irta',
    due_date: '15/03/2024',
    value: 1
  },
  {
    name: '🇺🇸 🧑‍🔬 ⚕️ National Institutes of Health Oxford/Cambridge Biomedical Research',
    description: 'Provides full funding to complete an accelerated, individualized doctoral training program for outstanding STEM students committed to biomedical research careers.',
    url: 'https://oxcam.gpp.nih.gov/prospective-students',
    due_date: '10/01/2024',
    value: 1
  },

  {
    name: '🇺🇸 🇬🇧 🧑‍🔬 ⚕️ National Institutes of Health Oxford/Cambridge MD/PhD',
    description: 'An award for students to conduct research in the NIH intramural research program combined with a dual-degree completed at a U.S. medical school and at Oxford or Cambridge University.',
    url: 'https://oxcam.gpp.nih.gov/about/mdphd-partnerships-program',
    due_date: '10/01/2024',
    value: 1
  },
  {
    name: '🇺🇸 🧑‍🔬 National Science Foundation Research Fellowship Program',
    description: 'Provides fellowships to students early in their graduate school careers who have demonstrated a strong potential for significant research achievements in STEM fields.',
    url: 'https://www.nsfgrfp.org/applicants/',
    due_date: '15/10/2024',
    value: 1
  },

  {
    name: '🇺🇸 🗽 American Association of University Women American Fellowships',
    description: 'Up to $80,000 for PhD dissertation, Postdoctoral Research Leave, and Short-Term Research Publication Grant.',
    url: 'https://www.aauw.org/resources/programs/fellowships-grants/',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 American Association of University Women Career Development Grants',
    description: 'Up to $20,000 to women who hold a bachelor’s degree and are preparing to advance or change careers or re-enter the workforce in education; health and medical sciences; science, technology, engineering, and math (STEM); or social sciences. Primary consideration is given to women of color and women pursuing their first advanced degree or credentials in nontraditional fields.',
    url: 'https://www.aauw.org/resources/programs/fellowships-grants/current-opportunities/career-development/',
    due_date: '15/11/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 American Association of University Women Community Action Grants',
    description: 'Up to $10,000 for individuals, researchers, and organizations that promote education and equity for women and girls',
    url: 'https://www.aauw.org/resources/programs/fellowships-grants/current-opportunities/community-action/',
    due_date: '01/12/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 American Association of University Women International Fellowships',
    description: 'Up to $50,000 for women pursuing full-time graduate or postdoctoral study in the United States to women who are not U.S. citizens or permanent residents, and who intend to return to their home country to pursue a professional career.',
    url: 'https://www.aauw.org/resources/programs/fellowships-grants/current-opportunities/international/',
    due_date: '15/11/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 American Association of University Women International Project Grants',
    description: 'Up to $7,000 for International AAUW fellows to build on their academic work and implement community-based projects that will improve the lives of women and girls in their home countries.',
    url: 'https://www.aauw.org/resources/programs/fellowships-grants/current-opportunities/international-project/',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 American Association of University Women Research Publication Grant in Engineering, Medicine, and Science',
    description: 'Up to $35,000 to women scholars conducting basic research in engineering, medicine or the physical or biological sciences and who have a doctorate degree in one of those fields. The grantee must publish their research in a scholarly publication and be listed as a primary author.',
    url: 'https://www.aauw.org/resources/programs/fellowships-grants/current-opportunities/research-publication-grants/',
    due_date: '01/12/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 American Association of University Women Selected Professions Fellowships',
    description: '$20,000 awarded to women who intend to pursue a full-time course of study at accredited U.S. institutions during the fellowship year in one of the designated degree programs where women’s participation traditionally has been low. Applicants must be U.S. citizens or permanent residents.',
    url: 'https://www.aauw.org/resources/programs/fellowships-grants/current-opportunities/selected-professions-fellowships/',
    due_date: '01/12/2024',
    value: 1
  },
  {
    name: '🇺🇸 🛡 Victims of PanAm Flight 103 Legacy Award',
    description: 'Legacy Awards are available to students pursuing advanced degrees at U.S. institutions in areas of study related to improved national security and terrorism prevention. Applicants may apply from all fields of study, but only applicants who make a clear connection between their program of study and career goals with improving national security and terrorism prevention will be considered for this award.',
    url: 'https://www.victimsofpanamflight103.org/legacy-award',
    due_date: '21/02/23',
    value: 1
  },
  {
    name: '🇺🇸 🗽 ⚖️ Marshall-Motley Scholarship from NAACP',
    description: 'Provides a full scholarship to law school for students who want to be civil rights attorneys in the South to advocate for Black communities seeking racial justice and equity.',
    url: 'https://marshallmotleyscholars.org/',
    due_date: '11/02/2024',
    value: 1
  },
  {
    name: '🌐 💰 Rotary Global Grants',
    description: 'Global Grants fund one to four years (up to $400,000) of international graduate study in areas related to: peacebuilding and conflict resolution; disease prevention and treatment; water and sanitation; maternal and child health; basic education and literacy; community economic development.',
    url: 'https://my.rotary.org/en/take-action/apply-grants/global-grants',
    due_date: '30/6/2024',
    value: 1
  },
  {
    name: '🇺🇸 ✌️ Carnegie Endowment for International Peace James Gaither Junior Fellows Program',
    description: 'The award provides a one-year paid internship in Washington, D.C. with the Endowment. Junior Fellows work as research assistants on projects such as non-proliferation, democracy building, migration, international economics, and Russian/Eurasian issues. About twelve awards are given annually.',
    url: 'https://carnegieendowment.org/about/jr-fellows',
    due_date: '15/01/2024',
    value: 1
  },
  {
    name: '🇺🇸 ✌️ Scoville Peace Fellowship Spring 2024',
    description: 'Funding to spend 6-9 months in Washington DC working at an agency or organization committed to peace and security issues.',
    url: 'https://scoville.org/overview/deadlines/',
    due_date: '03/10/2024',
    value: 1
  },
  {
    name: '🇺🇸 ✌️ Scoville Peace Fellowship Fall 2024',
    description: 'Funding to spend 6-9 months in Washington DC working at an agency or organization committed to peace and security issues.',
    url: 'https://scoville.org/overview/deadlines/',
    due_date: '07/01/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 ⚖️ CORO Fellowship',
    description: 'Provides funding for one year participating with a cohort of like-minded recent graduates who are committed to positive social change and active leadership.',
    url: 'http://www.corofellowship.org/apply-today/',
    due_date: '01/01/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 🥖 Emerson National Hunger Fellowship',
    description: 'Fellows spend five months learning about hunger and poverty issues in a community-based placement and then spend six months in Washington DC working with a government agency focused on national anti-hunger and anti-poverty policy.',
    url: 'https://www.hungercenter.org/what-we-do/emerson-fellowship/fellows/',
    due_date: '31/11/2024',
    value: 1
  },
  {
    name: '🇺🇸 🌐 🥖 Food and Agriculture Organization of the United Nations Schwarz Fellowship',
    description: 'A two-year paid internship for recent graduates interested in enacting social change. Make a difference working for a high-impact non-profit organization.',
    url: 'https://www.faoschwarzfellowship.org/how-to-apply/',
    due_date: '10/02/2024',
    value: 1
  },
  {
    name: '🇺🇸 🗽 NYC Urban Fellows',
    description: 'Funds a nine-month placement in NYC to learn about local government and public service. Opportunities combine work in mayoral offices and city agencies with volunteer service agencies and a seminar series.',
    url: 'https://www1.nyc.gov/site/dcas/employment/urban-fellows.page',
    due_date: '01/01/2024',
    value: 1
  },
  {
    name: '🇮🇳 AIF Clinton Fellowship for Service in India',
    description: 'Provides funding for a 10-month immersive volunteer service experience. Recipients work on sustainable development projects in education, livelihoods, and public health.',
    url: 'https://aif.org/fellowship/',
    due_date: '31/01//2024',
    value: 1
  },
  {
    name: '🇯🇵 JET Program (Japan Exchange and Teaching)',
    description: 'Participants work throughout Japan as Assistant Language Teachers in public and private schools.',
    url: 'https://jetprogramusa.org/how-to-apply/',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🌐 ✌️ Peace Corps',
    description: 'Peace Corps offers volunteers a two-year, immersive experience living in a host country and working on a wide range of projects.',
    url: 'https://www.peacecorps.gov/apply/',
    due_date: '01/10/2024',
    value: 1
  },
  {
    name: '🌍 Princeton-in-Africa',
    description: 'Provides funding for an opportunity to work in the field of development on the African continent for 12-months. Placements are made in up to 36 African countries.',
    url: 'https://www.princetoninafrica.org/applicants/how-to-apply/',
    due_date: '15/10/2024',
    value: 1
  },
  {
    name: '🌏 Princeton-in-Asia',
    description: 'Provides funding for year-long placements in various organizations throughout 20 countries in Asia. Placements include teaching English at all grade levels and working with international and local nonprofit organizations that focus on global issues.',
    url: 'https://piaweb.princeton.edu/apply-to-pia',
    due_date: '01/11/2024',
    value: 1
  },
  {
    name: '🌎 Princeton-in-Latin America',
    description: 'Provides funding for a year-long placement with nonprofit, public service, humanitarian, and government organizations in Latin America and the Caribbean.',
    url: 'https://pila-princeton.org/how-apply',
    due_date: '01/11/2024',
    value: 1
  }
]

scholarships.each do |scholarship|
  Scholarship.create!(
    name: scholarship[:name],
    description: scholarship[:description],
    url: scholarship[:url],
    due_date: scholarship[:due_date],
    value: scholarship[:value]
  )

  puts "#{scholarship[:name]} - scholarship created successfully"
end
