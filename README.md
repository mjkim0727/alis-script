# alis-script

아치 리눅스 설치 간략화 스크립트(Arch Linux Install Simplification Script)

## 목적

이 스크립트는 아치 리눅스 설치 시간을 단축시키기 위해 제작되었습니다.

## 구성

- bl-tool : GRUB 부트로더 설정을 해줍니다. (efibootmgr 기능은 지원하지 않음)
- de-tool : DE 설정을 명령어 한 번에 해줍니다.

## 사용법(Usage)

USB나 SD카드에 스크립트 파일을 복사한 후 아치 리눅스를 설치하고 있는 컴퓨터에 장착하십시오. 아치 리눅스가 설치 중인 컴퓨터는 chroot 상태에 있어야 합니다.

### bl-tool

먼저 GRUB와 ntfs-3g를 설치하셔야 합니다.

```
# arch-chroot 환경

pacman -S grub ntfs-3g

# arch-chroot 이전

pacstrap /mnt grub ntfs-3g

```

### de-tool

GNOME, KDE, Xfce를 미리 설치할 수 있으며, 비트토렌트 클라이언트와 필수 구성요소, 파이어폭스 웹 브라우저도 함께 설치됩니다.

또한, sudoers 정책이 자동으로 변경됩니다.

1. 사용자 계정을 생성하고 비밀번호를 설정합니다.
2. 시간을 설정합니다.
3. sudoer 파일을 수정하여 wheel 그룹이 sudo를 사용할 수 있게끔 정책을 변경합니다.

```
./alis-tool.sh
```

- desktop : 데스크탑 환경을 선택합니다.
