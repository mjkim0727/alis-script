# alis-script

아치 리눅스 설치 간략화 스크립트(Arch Linux Install Simplification Script)

## 목적

이 스크립트는 아치 리눅스 설치 시간을 단축시키기 위해 제작되었습니다.

## 구성

- bl-tool(개발 중) : GRUB 부트로더 설정을 해주며, Welcome to GRUB! 메시지를 제거해줍니다.
- de-tool : DE 설정을 명령어 한 번에 해줍니다.

## 사용법(Usage)

### de-tool

1. 사용자 계정을 생성하고 비밀번호를 설정합니다.
2. 시간을 설정합니다.
3. sudoer 파일을 수정하여 wheel 그룹이 sudo를 사용할 수 있게끔 정책을 변경합니다.

```
./alis-tool.sh --desktop [plasma, gnome, xfce, mate] --hostname [example - honggildong-arch]
```

- desktop : 데스크탑 환경을 선택합니다.
- hostname : 호스트명을 결정합니다.
