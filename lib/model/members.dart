class Member {
  final String id;
  final String name;
  final String role;
  final String img;

  const Member ({
    this.id,
    this.name,
    this.role,
    this.img,
  });
}

List<Member> members = [
  const Member(
    id: "1",
    name: "Soyeon",
    role: "Rapper",
    img: "img/jeon_soyeon.jpg"
  ),
  const Member(
      id: "2",
      name: "Miyeon",
      role: "Vocalist",
      img: "img/miyeon.jpg"
  ),
  const Member(
      id: "3",
      name: "Yuqi",
      role: "Vocalist",
      img: "img/yuqi.jpg"
  ),
  const Member(
     id: "4",
      name: "Minnie",
      role: "Vocalist",
      img: "img/minnie.jpg"
  ),
  const Member(
     id: "5",
      name: "Soojin",
      role: "Vocalist/Rapper",
      img: "img/soojin.jpg"
  ),
  const Member(
      id: "6",
      name: "Shuhua",
      role: "Dancer/Vocalist",
      img: "img/shuhua.jpg"
  ),
];