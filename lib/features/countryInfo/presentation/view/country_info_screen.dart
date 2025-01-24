import 'package:flutter/material.dart';
import 'package:xtravel/common/widgets/scaffol_wrapper.dart';
import 'package:xtravel/features/countryInfo/presentation/widgets/widgets.dart';

class CountryInfoScreen extends StatelessWidget {
  const CountryInfoScreen({super.key, required this.mainImageUrl});

  final String mainImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffoldwrapper(
      body: Stack(
        children: [
          CountryInfoTopPart(mainImageUrl: mainImageUrl),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 332),
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text("Netherlands"),
                    Text(
                        'Lorem ipsum odor amet, consectetuer adipiscing elit. Felis phasellus curae sit vehicula tempor tempor. Sit orci curabitur libero pharetra integer a. Conubia pretium interdum dictum maximus metus malesuada facilisis. Lectus porttitor litora nam; felis efficitur taciti. Facilisis montes nostra lectus leo; consequat sollicitudin efficitur. Dictum ex auctor nam; lorem est nostra. Morbi quis posuere felis netus hendrerit donec vulputate quam. Fames quisque curabitur senectus; vehicula nascetur a non vestibulum. Pellentesque congue dignissim ultricies metus viverra ornare. Mi orci auctor fusce pharetra quisque curae? Mattis pellentesque dis fames, augue dui vehicula. Iaculis gravida finibus sagittis tristique pharetra nibh consectetur. Efficitur blandit eleifend at vitae laoreet ante. Euismod interdum tempor ad nascetur molestie. Suscipit neque nascetur suspendisse scelerisque facilisi fames. Adipiscing fringilla pulvinar aliquam dis litora consectetur penatibus amet bibendum. Sem accumsan nisl, pellentesque facilisi diam feugiat. Mauris nec consectetur integer phasellus ultricies est urna penatibus. Euismod ac imperdiet maximus enim lobortis ante maximus sem. Ornare lorem nascetur tempus rhoncus ultricies. Inceptos nisl ultricies purus ultrices nullam auctor eros iaculis. Facilisis conubia at fermentum habitant morbi. Nec eu in libero neque nascetur vehicula parturient litora. Tempus nunc pretium a sapien nascetur pharetra. Maecenas mattis etiam dictum conubia eget fusce at. Laoreet vitae sociosqu dis velit aliquet. Fermentum taciti efficitur ornare hendrerit suspendisse nam netus. Aliquet quam scelerisque platea justo ligula egestas at finibus. At suscipit cras mi massa odio volutpat nisl imperdiet. Proin venenatis curae ridiculus neque nulla viverra; libero metus. Ornare interdum ullamcorper torquent magna penatibus nascetur. Volutpat integer fringilla purus ullamcorper iaculis elit. Malesuada consequat venenatis taciti potenti posuere eros. Elit maximus maecenas maecenas amet himenaeos ornare tellus. In odio cras montes odio; tempus magna. Duis etiam tortor pretium tincidunt libero netus dictumst nibh. Luctus lacinia aliquet proin etiam molestie. Aliquet nostra lorem massa; ultricies interdum nisi vivamus mus. Mi cubilia tristique donec vivamus ultricies congue nunc sed lobortis. Hac quam libero eros parturient euismod gravida. Molestie et imperdiet lobortis class consequat vel platea cursus. Felis nullam finibus elit augue eget. Pellentesque nunc tempor est taciti fermentum litora suscipit. Faucibus quis sodales placerat blandit fusce sem suspendisse facilisi? Tempus congue vestibulum ridiculus rutrum magna magnis dis. Accumsan nisi ligula pretium tortor tincidunt purus. Placerat maecenas bibendum nibh donec suscipit ligula molestie ad. Duis turpis platea ut quisque torquent nam. Aliquam a convallis felis mi dignissim. Commodo sagittis penatibus placerat; nunc dictumst potenti sed auctor blandit. Tristique torquent donec bibendum diam maximus netus auctor eleifend. Posuere varius leo blandit ultrices ad ultrices. Ad fringilla feugiat tempus suscipit aenean molestie enim litora eu. Orci ut adipiscing rhoncus nibh quis pharetra dapibus. Tempor nullam aenean tempus fusce finibus velit. Sollicitudin fames fringilla vulputate natoque urna phasellus. Augue finibus congue integer nam posuere hendrerit class. Torquent est augue cubilia luctus scelerisque egestas. Neque senectus ipsum molestie eget sagittis risus. Turpis ligula velit morbi suscipit amet suspendisse per. Id a sollicitudin sit praesent cras ridiculus odio mollis duis. Dapibus odio lacinia maximus in et pretium; pharetra arcu. Dignissim sed ultricies maecenas luctus donec turpis class etiam. Elit massa ad urna mollis; ornare nascetur interdum est platea. Ultricies integer vitae ultrices; volutpat nascetur facilisi. Ornare egestas interdum a varius turpis vestibulum efficitur vehicula. Potenti inceptos maecenas pharetra venenatis blandit curae malesuada. Aliquet ullamcorper potenti erat ornare hendrerit mus. Habitasse et adipiscing condimentum non vivamus habitasse curabitur. Amet ultrices amet ex ac ullamcorper. Sagittis fermentum leo eros posuere commodo fusce senectus? Himenaeos interdum lacinia erat dapibus bibendum facilisis nascetur. Dignissim vulputate rutrum praesent ante per ante erat. Nisl aliquam etiam phasellus; inceptos lacinia id sagittis. Turpis pharetra condimentum hac tempus porttitor per fames curabitur pellentesque. Vestibulum mus parturient inceptos praesent ornare per suspendisse. Dictumst condimentum laoreet per ornare aliquet per vitae elit. Aliquam eget iaculis platea suspendisse etiam nascetur mattis. Platea nibh justo sodales sem hendrerit. Montes ut eros hac adipiscing dictum malesuada. Dignissim sed netus pretium hendrerit maximus id consequat; condimentum pharetra. Praesent dictum tempus dictum porttitor nisl platea velit erat. Sociosqu eu turpis aliquet pulvinar senectus eros? Nam nullam risus suspendisse nunc phasellus sed. Lacinia ut curabitur sed litora ac vehicula. Et bibendum dui est facilisi ante netus. Vestibulum at luctus dapibus proin consectetur platea elit. Eget nam aptent dis; suscipit dui habitant pharetra vel. Sem interdum ullamcorper vitae semper integer quam. Risus ut odio mollis at tincidunt; interdum convallis congue. Mollis odio facilisi rhoncus; eu lacinia cubilia. Feugiat vehicula tristique penatibus venenatis metus lobortis interdum dui. Odio ante tortor iaculis sit malesuada maecenas augue. Duis a vivamus nec torquent feugiat cubilia fames elit. Vivamus congue hendrerit netus commodo velit rhoncus viverra. Natoque malesuada tortor massa neque tempor maximus montes. Elementum mattis neque urna sem parturient tortor pulvinar lacus. Ipsum fames semper nibh efficitur fusce lectus nisi suspendisse egestas. Auctor gravida magna auctor leo pulvinar natoque maximus nec egestas. Himenaeos cursus dictumst conubia pulvinar cubilia class. Morbi urna taciti urna viverra sit. Mollis nulla senectus hendrerit lorem urna venenatis sapien dignissim. Habitant penatibus fames dapibus etiam porta velit sagittis sapien. Inceptos lectus pretium habitant maecenas natoque dictumst. Vehicula consequat convallis primis sem senectus fermentum? Tellus pretium placerat quis purus molestie curabitur. Posuere conubia porta eu ipsum elit in. Ullamcorper erat aliquet in sagittis id. Aliquet potenti erat mus elementum ante nostra cubilia. Lacus tempor nec fermentum dis mattis consectetur sodales tristique. Nulla suspendisse proin ornare curabitur a platea aenean luctus egestas. Nec blandit etiam purus euismod ornare maximus a; potenti nibh. Pharetra condimentum inceptos tortor fusce aliquam sagittis quam. Tempus vivamus mollis porttitor, tempor est neque. Turpis consectetur mattis congue et mollis faucibus. Massa cras at vestibulum venenatis hac leo molestie libero. Elementum hendrerit praesent placerat sollicitudin sed aliquam. Eros elementum adipiscing ex; praesent luctus ligula tristique fermentum. Scelerisque parturient ridiculus taciti tempus donec vehicula.'),
                        
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
