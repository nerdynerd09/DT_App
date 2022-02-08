import 'package:carousel_slider/carousel_slider.dart';
import 'package:dt_app/Academy/academyDataScreen.dart';
import 'package:dt_app/NavigationDrawer.dart';
import 'package:dt_app/modals/academyCard.dart';
import 'package:dt_app/modals/customAlertBox.dart';
import 'package:dt_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(icon: Icon(Icons.menu), onPressed: () => SideDrawer()),
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Color(0xff281D60),
          // backgroundColor: Colors.red,
          title: ListTile(
            // tileColor: Colors.yellow,
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    "Academy",
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      // backgroundColor: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            
          ),
        ),
        drawer: SideDrawer(),
        backgroundColor: Color(0xff281D60),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 25,
            ),
            // Carousel Slider
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/personal-finance.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/saving-illustration.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/investment-illustration.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/stocck-market-illustration.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 400),
                viewportFraction: 0.8,
              ),
            ),

            SizedBox(
              height: 80,
            ),

            Column(
              children: [
                // Row 1
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Row 1 -> Card 1
                      AcademyCard(
                          'Personal Finance',"""Personal finance:\n
Despite how important money is in life, personal finance know-how — or “financial literacy” — is not typically taught in schools, or necessarily by parents. The good news is that many money issues can be solved just by getting back to personal finance basics — the basics you likely never learned in high school, like how to set up a budget or the best way to knock down debt.\n
Personal finance is a term that involves managing your money and planning for your future. It encompasses spending, saving, investing, insurance, mortgages, banking, taxes, and retirement planning. Personal finance is also about reaching personal financial goals, whether that’s having enough for short-term wants like going on a vacation or buying a car, or for the longer term, like saving enough for your college education or higher education.
\nTop Basics of Personal Finance:\n
1.	Budgeting: Budgeting and learning how to balance your bank account can be key to making sure what’s going out of your account each month isn’t exceeding what’s coming in.
\n2.	Building an Emergency Fund: If you don’t have money saved up for what life throws at you, you can risk racking up high interest credit card debt or defaulting on your bills. To avoid this, you may want to start putting some money aside every month to build an emergency fund. A common rule of thumb is to keep three to six months of basic living expenses set aside in a separate savings account.
\n3.	Starting Early to Save for Retirement: When you’re young, retirement can feel far away. But putting money away as early as possible means you’ll have more years to save, spreading the savings across your life rather than racing to catch up. Perhaps the biggest reason to start as early as you can, however, is the power of compound interest.
\n4.	Investing: For other long-term savings goals, you may want to invest additional money, keeping in mind that all investments have some level of risk and the market is volatile, meaning it moves up and down over time. To get started with investing, you can choose a financial firm you want to work with and then open a standard brokerage account. From there, you can put your money in a mutual fund or an exchange-traded fund.
\n5.	Getting Insured: When it comes to insurance, sometimes it’s best to prepare for the worst. That means making sure you have health insurance and car insurance (which is required by law). You also may want to consider renters or homeowners insurance to protect your home and belongings.
\n3 Personal Finance Rules to Know:\n
•   Keep your goals in mind.
•   Learn to distinguish wants from needs.
•   Always pay yourself first.
""",
                          'finance.jpg'),

                      // Row 1 -> Card 2
                      AcademyCard('Saving',"""Saving is a process of setting aside a portion of current income for future use, or the flow of resources accumulated in this way over a given period of time. Saving may take the form of increases in bank deposits, purchases of securities, or increased cash holdings. The extent to which individuals save is affected by their preferences for future over present consumption, their expectations of future income, and to some extent by the rate of interest.
There are two ways for an individual to measure his saving for a given accounting period. One is to estimate his income and subtract his current expenditures, the difference being his saving. The alternative is to examine his balance sheet (his property and his debts) at the beginning and end of the period and measure the increase in net worth, which reflects his saving.

Saving is important to the economic progress of a country because of its relation to investment. If there is to be an increase in productive wealth, some individuals must be willing to abstain from consuming their entire income. Progress is not dependent on saving alone; there must also be individuals willing to invest and thereby increase productive capacity.\n
""", 'saving-image.jpg'),
                    ]),

                SizedBox(
                  height: 20,
                ),

                // Row 2
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Row 2 -> Card 1
                      AcademyCard(
                          'Investment', """In any event of financial hardship, investment enables us to be independent and not rely on the money of others and thus it ensures present and future financial security. It allows us to grow our wealth and at the same time generate inflation-beating returns. Furthermore, investments have the potential to meet our financial goals, such as purchasing a house, accumulating retirement amount, and building an emergency fund, among others.
Contrary to traditional belief, college students are not too young to start investing because traditional college students in their 20s have the advantage of the time when it comes to student investments. They can typically earn back any potential losses over time. Learning the ins and outs of the market can be daunting, but the risk-taking attitude of a college student can help break that barrier.
Here are a few tips to remember before you start investing:\n
●	Determine the Right Type of Investment for You
●	Decide the Level of Risk You Can Live With
●	Educate Yourself
●	Keep on Researching

""", 'investment.jpg'),

                      // Row 2 -> Card 2

                      AcademyCard('Stock Market', """Stock markets are places where buyers and sellers meet to exchange shares for shares of public companies.
Stock markets are an important part of a free market economy because they allow for democratic access to trade and exchange of large sums of money for investors of all kinds.
They perform a number of market functions, including effective and efficient acquisition
The stock market allows more buyers and sellers of securities to meet, share, and trade. The stock market allows for the acquisition of price in corporate shares and acts as a barometer for the entire economy.
\n\nFunctions of a Stock Market:\n
1. Fair Dealing in Securities Transactions
2. Efficient Price Discovery
3. Liquidity Maintenance
4. Security and Validity of Transactions
5. Investor Protection
6. Balanced Regulation\n
Here are some basic things before investing in stock market:\n
1.	Never jump blindly into stock markets
2.	Stock market is not a money-making machine
3.	Educate yourself, handle basics first
4.	Don’t try to time the market, follow a disciplined investment approach
5.	Have realistic expectations

""",
                          'stock-market.jpeg'),
                    ]),
                SizedBox(
                  height: 10,
                )
              ],
            )
          ]),
        ));
  }
}
