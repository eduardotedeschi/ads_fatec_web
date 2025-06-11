<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <!-- felxslider.com -->
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="../Images/banner0.png" />
            </li>
            <li>
                <img src="../Images/banner1.png" />
            </li>
            <li>
                <img src="../Images/banner2.png" />
            </li>
            <li>
                <img src="../Images/banner4.png" />
            </li>
        </ul>
    </div>

    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>

    <script src="https://kit.fontawesome.com/2cfa6a23a4.js" crossorigin="anonymous"></script>

    <div class="texto-default">
        <p>O curso de <b>Análise e Desenvolvimento de Sistemas</b> da <b><a target="_blank" href="https://www.fatec.edu.br/">FATEC Americana</a></b> oferece uma formação robusta e prática, preparando os alunos para enfrentar os desafios do setor de tecnologia da informação. Com um currículo que abrange programação, banco de dados e engenharia de software, os estudantes desenvolvem habilidades essenciais para criar e gerenciar sistemas eficientes. Além disso, o curso proporciona uma experiência prática valiosa por meio de estágios e projetos reais, apoiado por um corpo docente experiente e infraestrutura moderna, preparando-os para diversas oportunidades profissionais no mercado de TI.</p>
    </div>

    <div class="row margin-top-30">
        <div class="col-3">
            <div class="colum box border margin-left-5 margin-right-20">
                <a href="#anchor1">
                <img width="100%" src="Images/si1.png" />
                    <br />
                    <div class="padding-14">
                        <h3 class="colum-texto">OBJETIVO</h3>
                        <p class="colum-p">Prepara alunos para projetar, desenvolver e gerenciar software. Foca na resolução de problemas tecnológicos e criação de soluções práticas. Os estudantes aprendem a enfrentar desafios no desenvolvimento de sistemas e atender às demandas do mercado e das empresas.</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-3">
            <div class="colum box border margin-right-20">
                <a href="#anchor2">
                <img width="100%" src="Images/si2.jpg" />
                    <br />
                    <div class="padding-14">
                        <h3 class="colum-texto">CONTEÚDO</h3>
                        <p class="colum-p">Inclui programação (C, C#, Java, Python), banco de dados (SQL), análise de sistemas (modelagem e requisitos) e engenharia de software (metodologias ágeis). Essas áreas fornecem uma base sólida para o desenvolvimento e manutenção de sistemas, preparando os alunos para lidar com diversos desafios tecnológicos.</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-3">
            <div class="colum box border margin-right-20">
                <a href="#anchor3">
                <img width="100%" src="Images/si3.jpg" />
                    <br />
                    <div class="padding-14">
                        <h3 class="colum-texto">CARREIRA</h3>
                        <p class="colum-p">Graduados podem atuar como desenvolvedores de software, analistas de sistemas ou consultores de TI. As oportunidades estão em empresas de tecnologia, startups e consultorias. Eles terão funções variadas, desde programação e análise de sistemas até gerenciamento de projetos, com boas perspectivas de crescimento profissional.</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-3">
            <div class="colum box border margin-right-5">
                <a href="#anchor4">
                    <img width="100%" src="Images/si4.jpg" />
                    <br />
                    <div class="padding-14">
                        <h3 class="colum-texto">HABILIDADES</h3>
                        <p class="colum-p">Desenvolve habilidades em programação, análise de sistemas e resolução de problemas complexos. Os alunos também aprendem a trabalhar em equipe, adaptar-se a novas tecnologias e usar metodologias ágeis. Essas competências preparam os estudantes para enfrentar desafios diversos no desenvolvimento e manutenção de software.</p>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div class="texto-default">
        <h2 id="anchor1">OBJETIVO</h2>
        <p>Tem como objetivo principal preparar os alunos para se tornarem especialistas capazes de projetar, desenvolver e gerenciar software de alta qualidade. Este curso é voltado para a resolução de problemas tecnológicos e a criação de soluções práticas que atendam às demandas atuais do mercado e das empresas. Os alunos são treinados para enfrentar desafios complexos no desenvolvimento de sistemas, aprendendo a identificar e abordar problemas com eficácia.</p>
        <p>Durante o curso, os estudantes são expostos a diversas metodologias e técnicas que visam aprimorar suas habilidades na construção de soluções de software eficientes. Além de dominar as ferramentas e linguagens de programação mais utilizadas, os alunos aprendem a trabalhar com diferentes plataformas e ambientes tecnológicos. O curso enfatiza a importância da inovação e da adaptação às novas tendências, preparando os alunos para se destacarem em um campo em constante evolução.</p>
        <p>Com uma formação focada na prática e na teoria, os alunos desenvolvem a capacidade de enfrentar e resolver problemas de maneira criativa e técnica. Ao concluir o curso, os graduados estarão bem equipados para atender às exigências de um mercado competitivo e dinâmico, contribuindo de forma significativa para o desenvolvimento tecnológico e a inovação nas empresas.</p>
        
        <h2 id="anchor2">CONTEÚDO</h2>
        <p>Oferece uma formação abrangente e detalhada em áreas essenciais para o desenvolvimento e manutenção de sistemas. Os alunos têm a oportunidade de aprender programação em diversas linguagens, incluindo <a target="_blank" href="https://learn.microsoft.com/pt-br/cpp/c-language/?view=msvc-170">C</a>, <a target="_blank" href="https://learn.microsoft.com/pt-br/dotnet/csharp/tour-of-csharp/">C#</a>, <a target="_blank" href="https://learn.microsoft.com/pt-br/shows/java-for-beginners/">Java</a> e <a target="_blank" href="https://learn.microsoft.com/pt-br/training/paths/beginner-python/">Python</a>. Essas linguagens são fundamentais para a criação de software e permitem que os estudantes desenvolvam habilidades em diferentes paradigmas de programação.</p>
        <p>Além da programação, o curso cobre tópicos importantes em banco de dados, com foco em <a target="_blank" href="https://support.microsoft.com/pt-br/topic/acessar-sql-conceitos-b%C3%A1sicos-vocabul%C3%A1rio-e-sintaxe-444d0303-cde1-424e-9a74-e8dc3e460671">SQL</a>, que é crucial para a gestão e manipulação de informações. A análise de sistemas é outro componente vital do curso, abordando modelagem e levantamento de requisitos, o que ajuda os alunos a entender e documentar as necessidades dos usuários e a projetar soluções adequadas.</p>
        <p>A engenharia de software, com ênfase em metodologias ágeis, é também um aspecto central do curso. As metodologias ágeis ajudam os alunos a gerenciar projetos de software de forma mais eficiente e flexível, adaptando-se às mudanças e entregando resultados de alta qualidade. Esses tópicos fornecem uma base sólida para que os alunos possam enfrentar diversos desafios tecnológicos e estejam prontos para o mercado de trabalho.</p>

        <h2 id="anchor3">CARREIRA</h2>
        <p>Os graduados têm acesso a uma ampla gama de oportunidades profissionais em diversas áreas da tecnologia da informação. Eles podem atuar como desenvolvedores de software, responsáveis por criar e manter aplicativos e sistemas; analistas de sistemas, encarregados de entender e definir requisitos e implementar soluções; ou consultores de TI, que oferecem orientação estratégica e técnica para empresas.</p>
        <p>As oportunidades de carreira se encontram em empresas de tecnologia, startups inovadoras e consultorias especializadas. Os profissionais da área podem se envolver em funções variadas, desde programação e análise de sistemas até o gerenciamento de projetos e a coordenação de equipes. A demanda por especialistas em desenvolvimento de software e análise de sistemas é alta, e as perspectivas de crescimento profissional são promissoras. Com a evolução constante das tecnologias e a necessidade de inovação, os graduados estão bem posicionados para avançar em suas carreiras e explorar novas possibilidades no setor de TI.</p>

        <h2 id="anchor4">HABILIDADES</h2>
        <p>Visa desenvolver uma série de habilidades essenciais para o sucesso no campo da tecnologia da informação. Uma das principais competências adquiridas é a programação em várias linguagens, que permite aos alunos criar e implementar soluções de software eficazes.</p>
        <p>Além das habilidades técnicas, os alunos também são treinados em analisar e resolver problemas complexos, o que é crucial para entender e atender às necessidades dos usuários. O curso enfatiza a importância de trabalhar em equipe e de adaptar-se a novas tecnologias e metodologias, como as ágeis, que são fundamentais para a gestão eficiente de projetos.</p>
        <p>Essas competências ajudam os alunos a enfrentar diversos desafios no desenvolvimento e manutenção de software, preparando-os para contribuir significativamente em ambientes de trabalho colaborativos e em constante mudança. O desenvolvimento dessas habilidades é fundamental para o sucesso profissional e para a capacidade de inovar e resolver problemas de maneira criativa e eficaz.</p>
    </div>
</asp:Content>
