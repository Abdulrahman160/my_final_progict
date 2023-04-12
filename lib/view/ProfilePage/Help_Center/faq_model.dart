class DataPageFAQ {
  final String? title;
  final String? text;
  bool? values;

  DataPageFAQ({
    required this.text,
     this.title,
    this.values = true,
  });
}

List<DataPageFAQ> faqData = [
  DataPageFAQ(
    title: '? What is the App',
    text:
        'An application, which is short for "application",\n is a  type of file program that can be installed \n Play it on a computer, tablet or smartphone \nor others electronic devices.',
),
  DataPageFAQ(
    title: '? What is the App',
    text:
    'An application, which is short for "application",\n is a  type of file program that can be installed \n Play it on a computer, tablet or smartphone \nor others electronic devices.',
  ),
  DataPageFAQ(
    title: '? What is the App',
    text:
    'An application, which is short for "application",\n is a  type of file program that can be installed \n Play it on a computer, tablet or smartphone \nor others electronic devices.',
  ),
];
List<DataPageFAQ> containerData = [
  DataPageFAQ(
    text: 'Account',
  ),
  DataPageFAQ(
    text: 'General',
  ),
  DataPageFAQ(
    text: 'Service',
  ),
  DataPageFAQ(
    text: 'Service',
  ),
];
