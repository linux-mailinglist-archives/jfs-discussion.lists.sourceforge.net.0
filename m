Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5002AB1E969
	for <lists+jfs-discussion@lfdr.de>; Fri,  8 Aug 2025 15:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Reply-To:From:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:To:
	Message-ID:Date:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=76EnEHQ1Abu86tTVhHuMrTL0YC4OM04NAvec2fylJi4=; b=bRqV5K0K79V/gr7bSlrfsDisVi
	41TcIQ2CD1BeaXS3GnFLjQyh/fes1nSMWUr4eVJ2iFzb0t9C4ycjXJwcGwrg8SV0WUPEgVPNomFbk
	bgpTnz5tuPZaCKv5u0MCLejFIjNIQdLHa5W6wTuAJX68pVuBX52O7Cm6vD1ZMADtR/Lg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ukNOt-0001Rh-KV;
	Fri, 08 Aug 2025 13:44:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pangyes608@gmail.com>) id 1ukEDM-0006bF-8Z
 for jfs-discussion@lists.sourceforge.net;
 Fri, 08 Aug 2025 03:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LPT+6Ghs0Kau6M6zEtkEZojzaRwaCaZLzxSypX4IJDk=; b=DdPaQkNvZhSnHXd6rQt1A3joRU
 iGfbLn1BJqZ05pFeK1DM3SGxEd9RqAk9o8Z9ycrqCRECcaAcoY0E4qGNDJ83F8G0F6amV1hOEq2Wm
 ApSBKOpzEe0OADyXg3F02SiGTsIeBdeI0vXuWzhK5lnsdKZEem2MsC2A7U0nx5/YPP+M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LPT+6Ghs0Kau6M6zEtkEZojzaRwaCaZLzxSypX4IJDk=; b=N
 3BJg6cNrVapPWMYpFf3Rt4gL6SI4tr7JxZX/i8lZVb1vPSlhmbC3HRPYKXPoE6O5cfOG3tz2QC/85
 Md6F2GRbBNK9rzSKEEJu06Y+EQTRAKbixFqX0+t5M39dAE6fmohYf6TJ7yNjoXd25vKerByobJ2L3
 UFlR3PXLMkjTmIHU=;
Received: from mail-yw1-f180.google.com ([209.85.128.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ukEDL-0000WL-Fn for jfs-discussion@lists.sourceforge.net;
 Fri, 08 Aug 2025 03:56:20 +0000
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-71b71a8d5f0so19490517b3.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 07 Aug 2025 20:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754625369; x=1755230169; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=LPT+6Ghs0Kau6M6zEtkEZojzaRwaCaZLzxSypX4IJDk=;
 b=VMys7B90A04qqbiSXByHeDJ5Kt8ChaWgPZkzsMCg8G1zNNK0HoATPMT76KdnyEJWrY
 nvx2QwLf0YaH+TrvisR8BdSE8zYnK3yUvWHAvLBMbaHT6mPQmcQKLjn7WQ4Z7ZNZYyMo
 cIVovjjYxCYJwB4Yy4o9gLidKgXKdx2H6QOH/qyau6YAQHc7oSqwf84hUQNtS3QNMSy1
 9lqZZBViV5l7u+kFkYq3vdt4m7PupMj6+GHDunXbnZDmLTn6fQe+VeHRk58OLfPKFJ0y
 E18oYNLKvDfNL/SJp2mSAoHTBlRCtmwLTB4o6vjuocmRiN35H6awBdWJ2PNc1xtqjujd
 +6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754625369; x=1755230169;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LPT+6Ghs0Kau6M6zEtkEZojzaRwaCaZLzxSypX4IJDk=;
 b=S8xrMLMdi7/F+ahgNCqd0ja9l65Ow/Vv2l6/fmHvIJL1AVfKSQJZNRHTLt9ju+CvIf
 Jav8NMoRJkJNLy+uJMBNNox4bt5a3QLJCBZJgELnMPLB6Lw4kzzcbV0gvL43TijFWOVh
 Gx1XU5/XbvD/f4rywYzcjBLAhPp5QUM1tVGriPeIBx6lUR0DejPqmUqX+VBTpliS9VPN
 D0c9iqnL4Y+WZp3g+hLwUVtt3OPiNkL4wFmJH3WC5Adqhni6qJgDMLG5dQ+BcpAxwTTT
 ykBSoBgQcm+mbBaVf9Ha3SVLj1eXpE924HtBsG7fQPssDnfWnM4RshlcZuaaSCRLZCYq
 y94g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVbrGak2q4RjZF0Z21N+KZDUCtrPqV/vpaXCV2fThCPswzy6eThBcr6K07mxmVMhtCBh9WaUTLc30nc2wxkIQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzB5LDvTnsi3x2+h2UnZt2hcoXPO6+n1+MhqkOPa0HuVsiOEhrC
 BN60Ivhy1Ay8Fl4/cFIs6sPdeGgmUeB6Y37Igwzwag5mX5jX57MocaC2jUeZJtvEAaOtLC5KYzo
 pfzDZZJBvpZnx6ydkLLXAIbLSk0BcECU=
X-Gm-Gg: ASbGnctws1h6nuH8/zWP+jjNvo+ngHumhlgaTvJQJdjMVns+P54uHJF+B7Y7UWiDWUb
 pQLFawSeegjioet4BN8UIZkzJtzoAUtXjfWCw76JFjHoOYWeto0GC/KA8KZiaNNKGEpBPE76T1d
 ktR1DaytWuJfIPmITsYz5/mI9yCMTak8dTD8Pp0RDKPdGObQDyd19tW2lMKWfvkyAxf/VOYXdX5
 hwmst1ReZOR1KsFd4cOD4qyIBEiCBGl5DyZ7wJl+Ni9lbicz1lw
X-Google-Smtp-Source: AGHT+IE/Dr59I8niuNpDCO0FHNO+ih8hV8KGwzAiD272wI/+srnEhK8+X70J410fhSWjSMHxFnPSFR+asyRR341U5Og=
X-Received: by 2002:a05:690c:690d:b0:712:d70b:45d5 with SMTP id
 00721157ae682-71bf0e5a9b8mr17734227b3.33.1754625368560; Thu, 07 Aug 2025
 20:56:08 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 8 Aug 2025 11:55:56 +0800
X-Gm-Features: Ac12FXzPFSMDrTWKxDFQuaManT6Oy7pFF7Db41MsVNl4GGpu4mrOY2SeRnS2frk
Message-ID: <CAJLDUOdBiYMarq1Ye4Yygzmgh1TKXYLyuYHL-24xJ9V2M+X4vA@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, brauner@kernel.org, sandeen@redhat.com, 
 willy@infradead.org, dan.carpenter@linaro.org
Content-Type: multipart/mixed; boundary="000000000000cf2346063bd28dd2"
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dear Linux maintainers and reviewers: We are reporting a
 Linux kernel bug titled **kernel BUG in jfs_evict_inode**,
 discovered using a modified
 version of Syzkaller. Following my previous bug report, [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [pangyes608(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [pangyes608(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.180 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1ukEDL-0000WL-Fn
X-Mailman-Approved-At: Fri, 08 Aug 2025 13:44:49 +0000
Subject: [Jfs-discussion] kernel BUG in jfs_evict_inode
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: yes PANG via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: yes PANG <pangyes608@gmail.com>
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--000000000000cf2346063bd28dd2
Content-Type: multipart/alternative; boundary="000000000000cf2343063bd28dd0"

--000000000000cf2343063bd28dd0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Linux maintainers and reviewers:
We are reporting a Linux kernel bug titled **kernel BUG in
jfs_evict_inode**, discovered using a modified version of Syzkaller.
Following my previous bug report, here is a structured analysis from our
fault localization tool "CoHIKER". These may be helpful for your fixing and
patches.
**root cause analysis**
Core Fault:
Invalid inode state handling during JFS filesystem cleanup phase,
specifically in the inode eviction path (fs/jfs/inode.c).

Trigger Conditions:
Mounting JFS with specific vulnerable configuration:
Mount flags =3D 0x0
Filesystem parameter =3D 0x5e5b
Subsequent filesystem operations
Inode eviction during cleanup (unmount/process termination)

Failure Mechanism:
The combination of these mount parameters creates inconsistent inode states
that aren't properly handled during eviction, leading to a kernel BUG when
the system attempts to flush/clean up these inodes.

Evidence from Mutations:
Successful mutations all modified mount parameters:
Changing mount flags (0x0=E2=86=920x1)
Adjusting mount configuration (0x1=E2=86=920x0)
Modifying FS-specific parameter (0x5e5b=E2=86=920x5e5a)
Failed mutation (process creation flags) confirmed the bug is
filesystem-specific

Impact Scope:
Subsystem: JFS filesystem implementation
Component: Inode management subsystem
Phase: Cleanup operations (particularly inode eviction)

Root Cause Conclusion:
The bug manifests due to insufficient validation of inode state transitions
when JFS is mounted with specific non-default parameters, combined with
particular sequences of filesystem operations. The invalid state isn't
detected until cleanup phase, causing a fatal kernel error.
This appears to be a filesystem-specific logic error in state management
rather than a generic memory or concurrency issue.

**result of file and method level fault localization"
Top-10 of the buggy file:
1. fs/jfs/inode.c
2. fs/jfs/super.c
3. fs/jfs/jfs_incore.h
4. fs/jfs/jfs_dinode.h
5. fs/jfs/jfs_metapage.h
6. fs/jfs/file.c
7. fs/jfs/namei.c
8. fs/jfs/jfs_inode.h
9. fs/inode.c
10. fs/jfs/dir.c
Top-10 of the buggy method:
1. jfs_evict_inode
2. jfs_truncate_nolock
3. jfs_write_inode
4. jfs_commit_inode
5. jfs_iget
6. jfs_dirty_inode
7. jfs_truncate
8. jfs_releasepage
9. jfs_invalidatepage
10. evict_inodes
Attached:
complete output of fault localizaiton

--000000000000cf2343063bd28dd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Linux maintainers and reviewers:<br>We are reporting =
a Linux kernel bug titled **kernel BUG in jfs_evict_inode**, discovered usi=
ng a modified version of Syzkaller.<br>Following my previous bug report, he=
re is a structured analysis from our fault localization tool &quot;CoHIKER&=
quot;. These may be helpful for your fixing and patches.<br>**root cause an=
alysis**<br>Core Fault:<br>Invalid inode state handling during JFS filesyst=
em cleanup phase, specifically in the inode eviction path (fs/jfs/inode.c).=
<br><br>Trigger Conditions:<br>Mounting JFS with specific vulnerable config=
uration:<br>Mount flags =3D 0x0<br>Filesystem parameter =3D 0x5e5b<br>Subse=
quent filesystem operations<br>Inode eviction during cleanup (unmount/proce=
ss termination)<br><br>Failure Mechanism:<br>The combination of these mount=
 parameters creates inconsistent inode states that aren&#39;t properly hand=
led during eviction, leading to a kernel BUG when the system attempts to fl=
ush/clean up these inodes.<br><br>Evidence from Mutations:<br>Successful mu=
tations all modified mount parameters:<br>Changing mount flags (0x0=E2=86=
=920x1)<br>Adjusting mount configuration (0x1=E2=86=920x0)<br>Modifying FS-=
specific parameter (0x5e5b=E2=86=920x5e5a)<br>Failed mutation (process crea=
tion flags) confirmed the bug is filesystem-specific<br><br>Impact Scope:<b=
r>Subsystem: JFS filesystem implementation<br>Component: Inode management s=
ubsystem<br>Phase: Cleanup operations (particularly inode eviction)<br><br>=
Root Cause Conclusion:<br>The bug manifests due to insufficient validation =
of inode state transitions when JFS is mounted with specific non-default pa=
rameters, combined with particular sequences of filesystem operations. The =
invalid state isn&#39;t detected until cleanup phase, causing a fatal kerne=
l error.<br>This appears to be a filesystem-specific logic error in state m=
anagement rather than a generic memory or concurrency issue.<br><br>**resul=
t of file and method level fault localization&quot;<br>Top-10 of the buggy =
file:<br>1. fs/jfs/inode.c<br>2. fs/jfs/super.c<br>3. fs/jfs/jfs_incore.h<b=
r>4. fs/jfs/jfs_dinode.h<br>5. fs/jfs/jfs_metapage.h<br>6. fs/jfs/file.c<br=
>7. fs/jfs/namei.c<br>8. fs/jfs/jfs_inode.h<br>9. fs/inode.c<br>10. fs/jfs/=
dir.c<br>Top-10 of the buggy method:<br>1. jfs_evict_inode<br>2. jfs_trunca=
te_nolock<br>3. jfs_write_inode<br>4. jfs_commit_inode<br>5. jfs_iget<br>6.=
 jfs_dirty_inode<br>7. jfs_truncate<br>8. jfs_releasepage<br>9. jfs_invalid=
atepage<br>10. evict_inodes<br>Attached: <br>complete output of fault local=
izaiton</div>

--000000000000cf2343063bd28dd0--
--000000000000cf2346063bd28dd2
Content-Type: text/plain; charset="UTF-8"; name="complete_output.txt"
Content-Disposition: attachment; filename="complete_output.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_me2amqbv0>
X-Attachment-Id: f_me2amqbv0

RmlsZS1sZXZlbCBvdXRwdXTvvJoNCnsNCiAgInRob3VnaHRfcHJvY2VzcyI6IHsNCiAgICAic3Rl
cDEiOiB7DQogICAgICAiYnVnX2xvY2F0aW9uIjogImZzL2pmcy9pbm9kZS5jIGxpbmUgMTY5IGlu
IGpmc19ldmljdF9pbm9kZSgpIiwNCiAgICAgICJidWdfdHlwZSI6ICJLZXJuZWwgQlVHIChpbnZh
bGlkIG9wY29kZSkgc3VnZ2VzdGluZyBtZW1vcnkgY29ycnVwdGlvbiBvciBpbnZhbGlkIHN0YXRl
IGR1cmluZyBpbm9kZSBldmljdGlvbiIsDQogICAgICAibW9kdWxlIjogIkpGUyBmaWxlc3lzdGVt
IiwNCiAgICAgICJ0cmlnZ2VyX29wZXJhdGlvbiI6ICJJbm9kZSBldmljdGlvbiBkdXJpbmcgZmls
ZXN5c3RlbSBjbGVhbnVwIg0KICAgIH0sDQogICAgInN0ZXAyIjogew0KICAgICAgInRlc3RfcHJv
Z3JhbV9hbmFseXNpcyI6IHsNCiAgICAgICAgInN5c2NhbGxzIjogWw0KICAgICAgICAgICJzeXpf
bW91bnRfaW1hZ2UkamZzKCk6IE1vdW50cyBKRlMgZmlsZXN5c3RlbSIsDQogICAgICAgICAgInN5
el9jbG9uZSgpOiBDcmVhdGVzIHByb2Nlc3MgY29udGV4dCIsDQogICAgICAgICAgIm9wZW5hdCgp
OiBDcmVhdGVzIGZpbGUgd2l0aCBleHRyZW1lbHkgbG9uZyBwYXRobmFtZSINCiAgICAgICAgXSwN
CiAgICAgICAgInRlc3RfZm9jdXMiOiAiSkZTIGZpbGVzeXN0ZW0gYmVoYXZpb3IgdW5kZXIgY29u
Y3VycmVudCBhY2Nlc3Mgd2l0aCBwYXRob2xvZ2ljYWwgZmlsZW5hbWVzIg0KICAgICAgfQ0KICAg
IH0sDQogICAgInN0ZXAzIjogew0KICAgICAgInN1Y2Nlc3NmdWxfbXV0YXRpb25zIjogWw0KICAg
ICAgICB7DQogICAgICAgICAgImNoYW5nZSI6ICJNb3VudCBmbGFnIDB4MCDihpIgMHgxIiwNCiAg
ICAgICAgICAiYW5hbHlzaXMiOiAiTW91bnQgb3B0aW9ucyBhZmZlY3QgaW5vZGUgaGFuZGxpbmcg
ZHVyaW5nIGV2aWN0aW9uIg0KICAgICAgICB9LA0KICAgICAgICB7DQogICAgICAgICAgImNoYW5n
ZSI6ICJNb3VudCBwYXJhbWV0ZXIgMHgxIOKGkiAweDAiLA0KICAgICAgICAgICJhbmFseXNpcyI6
ICJTcGVjaWZpYyBtb3VudCBjb25maWd1cmF0aW9uIHByZXZlbnRzIGJ1ZyINCiAgICAgICAgfSwN
CiAgICAgICAgew0KICAgICAgICAgICJjaGFuZ2UiOiAiTW91bnQgcGFyYW1ldGVyIDB4NWU1YiDi
hpIgMHg1ZTVhIiwNCiAgICAgICAgICAiYW5hbHlzaXMiOiAiUHJlY2lzZSBmaWxlc3lzdGVtIHBh
cmFtZXRlcnMgY3JpdGljYWwgZm9yIGNvcnJlY3Qgb3BlcmF0aW9uIg0KICAgICAgICB9DQogICAg
ICBdLA0KICAgICAgImNvbmNsdXNpb24iOiAiQnVnIGlzIHNlbnNpdGl2ZSB0byBKRlMgbW91bnQg
Y29uZmlndXJhdGlvbiBhbmQgaW5vZGUgbWFuYWdlbWVudCINCiAgICB9LA0KICAgICJzdGVwNCI6
IHsNCiAgICAgICJmYWlsZWRfbXV0YXRpb24iOiB7DQogICAgICAgICJjaGFuZ2UiOiAiQ2xvbmUg
ZmxhZ3MgMHg0MDQwMDAg4oaSIDB4NDAwMDAwIiwNCiAgICAgICAgImFuYWx5c2lzIjogIlByb2Nl
c3MgY3JlYXRpb24gZmxhZ3MgaXJyZWxldmFudCB0byBidWcsIGNvbmZpcm1pbmcgZmlsZXN5c3Rl
bS1zcGVjaWZpYyBuYXR1cmUiDQogICAgICB9DQogICAgfSwNCiAgICAic3RlcDUiOiB7DQogICAg
ICAiZGVmZWN0X2NoYXJhY3RlcmlzdGljcyI6IFsNCiAgICAgICAgIkpGUy1zcGVjaWZpYyBpbm9k
ZSBoYW5kbGluZyBpc3N1ZSIsDQogICAgICAgICJUcmlnZ2VyZWQgZHVyaW5nIGV2aWN0aW9uIHBh
dGgiLA0KICAgICAgICAiU2Vuc2l0aXZlIHRvIG1vdW50IGNvbmZpZ3VyYXRpb24iLA0KICAgICAg
ICAiTm90IHByb2Nlc3MtY29udGV4dCBkZXBlbmRlbnQiLA0KICAgICAgICAiTGlrZWx5IHJlbGF0
ZWQgdG8gaW5vZGUgc3RhdGUgbWFuYWdlbWVudCINCiAgICAgIF0NCiAgICB9LA0KICAgICJzdGVw
NiI6IHsNCiAgICAgICJmaWxlX2NsYXNzaWZpY2F0aW9uIjogew0KICAgICAgICAiY29yZV9qZnMi
OiBbDQogICAgICAgICAgImZzL2pmcy9pbm9kZS5jIiwNCiAgICAgICAgICAiZnMvamZzL3N1cGVy
LmMiLA0KICAgICAgICAgICJmcy9qZnMvbmFtZWkuYyINCiAgICAgICAgXSwNCiAgICAgICAgImlu
b2RlX2hhbmRsaW5nIjogWw0KICAgICAgICAgICJmcy9qZnMvamZzX2luY29yZS5oIiwNCiAgICAg
ICAgICAiZnMvamZzL2pmc19kaW5vZGUuaCIsDQogICAgICAgICAgImZzL2pmcy9qZnNfaW5vZGUu
aCINCiAgICAgICAgXSwNCiAgICAgICAgImZpbGVzeXN0ZW1fb3BzIjogWw0KICAgICAgICAgICJm
cy9qZnMvZmlsZS5jIiwNCiAgICAgICAgICAiZnMvamZzL2Rpci5jIiwNCiAgICAgICAgICAiZnMv
amZzL3hhdHRyLmMiDQogICAgICAgIF0sDQogICAgICAgICJtZW1vcnlfbWFuYWdlbWVudCI6IFsN
CiAgICAgICAgICAiZnMvamZzL2pmc19tZXRhcGFnZS5oIiwNCiAgICAgICAgICAiZnMvamZzL2pm
c19kbWFwLmgiDQogICAgICAgIF0sDQogICAgICAgICJ2ZnNfaW50ZXJmYWNlcyI6IFsNCiAgICAg
ICAgICAiZnMvaW5vZGUuYyIsDQogICAgICAgICAgImZzL3N1cGVyLmMiDQogICAgICAgIF0NCiAg
ICAgIH0NCiAgICB9LA0KICAgICJzdGVwNyI6IHsNCiAgICAgICJmYXVsdF9maWxlX2NoYXJhY3Rl
cmlzdGljcyI6IFsNCiAgICAgICAgIkhhbmRsZXMgaW5vZGUgZXZpY3Rpb24gcGF0aCIsDQogICAg
ICAgICJNYW5hZ2VzIGlub2RlIG1ldGFkYXRhIiwNCiAgICAgICAgIkludGVyYWN0cyB3aXRoIG1v
dW50IG9wdGlvbnMiLA0KICAgICAgICAiQ29udGFpbnMgSkZTLXNwZWNpZmljIGxvZ2ljIiwNCiAg
ICAgICAgIlBvdGVudGlhbGx5IG1hbmFnZXMgbWVtb3J5IGJ1ZmZlcnMiDQogICAgICBdDQogICAg
fQ0KICB9LA0KICAic3RhbmRhcmRfb3V0cHV0IjogWw0KICAgICJmcy9qZnMvaW5vZGUuYyIsDQog
ICAgImZzL2pmcy9zdXBlci5jIiwNCiAgICAiZnMvamZzL2pmc19pbmNvcmUuaCIsDQogICAgImZz
L2pmcy9qZnNfZGlub2RlLmgiLA0KICAgICJmcy9qZnMvamZzX21ldGFwYWdlLmgiLA0KICAgICJm
cy9qZnMvZmlsZS5jIiwNCiAgICAiZnMvamZzL25hbWVpLmMiLA0KICAgICJmcy9qZnMvamZzX2lu
b2RlLmgiLA0KICAgICJmcy9pbm9kZS5jIiwNCiAgICAiZnMvamZzL2Rpci5jIg0KICBdDQp9DQpN
ZXRob2QtbGV2ZWwgb3V0cHV0Og0Kew0KICAidGhvdWdodF9wcm9jZXNzIjogew0KICAgICJzdGVw
XzEiOiB7DQogICAgICAiZGVzY3JpcHRpb24iOiAiQnVnIFVuZGVyc3RhbmRpbmciLA0KICAgICAg
ImRldGFpbHMiOiAiVGhlIGJ1ZyByZXBvcnQgaW5kaWNhdGVzIGEga2VybmVsIEJVRyBhdCBmcy9q
ZnMvaW5vZGUuYzoxNjkgaW4gdGhlIGZ1bmN0aW9uIGBqZnNfZXZpY3RfaW5vZGVgLiBUaGUgY3Jh
c2ggb2NjdXJzIGR1cmluZyBpbm9kZSBldmljdGlvbiwgc3VnZ2VzdGluZyBhbiBpc3N1ZSB3aXRo
IGNsZWFudXAgb2YgSkZTIGlub2RlIHJlc291cmNlcy4gVGhlIGNhbGwgc3RhY2sgc2hvd3MgdGhp
cyBpcyB0cmlnZ2VyZWQgZHVyaW5nIGZpbGVzeXN0ZW0gdW5tb3VudC9jbGVhbnVwICh2aWEgYGV2
aWN0X2lub2Rlc2AgLT4gYGdlbmVyaWNfc2h1dGRvd25fc3VwZXJgKS4iDQogICAgfSwNCiAgICAi
c3RlcF8yIjogew0KICAgICAgImRlc2NyaXB0aW9uIjogIlByb2dyYW0gSW50ZW50aW9uIiwNCiAg
ICAgICJkZXRhaWxzIjogIlRoZSB0ZXN0IHByb2dyYW0gbW91bnRzIGEgSkZTIGltYWdlLCBjbG9u
ZXMgYSBwcm9jZXNzLCBhbmQgb3BlbnMgYSBmaWxlLiBUaGlzIGV4ZXJjaXNlcyBmaWxlc3lzdGVt
IGNyZWF0aW9uLCBwcm9jZXNzIGJlaGF2aW9yLCBhbmQgZmlsZSBvcGVyYXRpb25zLiBUaGUgYnVn
IG1hbmlmZXN0cyBkdXJpbmcgY2xlYW51cCAodW5tb3VudCBwaGFzZSkuIg0KICAgIH0sDQogICAg
InN0ZXBfMyI6IHsNCiAgICAgICJkZXNjcmlwdGlvbiI6ICJTdWNjZXNzZnVsIE11dGF0aW9uIEFu
YWx5c2lzIiwNCiAgICAgICJkZXRhaWxzIjogIk5vIHN1Y2Nlc3NmdWwgbXV0YXRpb25zIHdlcmUg
cHJvdmlkZWQsIGJ1dCB0aGUgYnVnJ3MgcGVyc2lzdGVuY2UgYWNyb3NzIHRlc3RzIHN1Z2dlc3Rz
IGl0J3MgYSBmdW5kYW1lbnRhbCBpc3N1ZSBpbiBKRlMncyBjbGVhbnVwIHBhdGggcmF0aGVyIHRo
YW4gYSByYWNlIGNvbmRpdGlvbiBvciB0aW1pbmcgaXNzdWUuIg0KICAgIH0sDQogICAgInN0ZXBf
NCI6IHsNCiAgICAgICJkZXNjcmlwdGlvbiI6ICJGYWlsZWQgTXV0YXRpb24gQW5hbHlzaXMiLA0K
ICAgICAgImRldGFpbHMiOiAiU2luY2UgYWxsIG11dGF0aW9ucyBmYWlsLCB0aGUgYnVnIGFwcGVh
cnMgY29uc2lzdGVudGx5IHRyaWdnZXJlZCBkdXJpbmcgaW5vZGUgZXZpY3Rpb24sIHJlZ2FyZGxl
c3Mgb2Ygc3BlY2lmaWMgb3BlcmF0aW9ucyBwZXJmb3JtZWQgZWFybGllci4iDQogICAgfSwNCiAg
ICAic3RlcF81Ijogew0KICAgICAgImRlc2NyaXB0aW9uIjogIkRlZmVjdCBQYXR0ZXJuIGFuZCBM
aWZlY3ljbGUgSW5mZXJlbmNlIiwNCiAgICAgICJkZXRhaWxzIjogIlRoZSBidWcgb2NjdXJzIGR1
cmluZyB0aGUgY2xlYW51cCBwaGFzZSAoaW5vZGUgZXZpY3Rpb24pLCBzdWdnZXN0aW5nIGVpdGhl
cjogKDEpIGluY29ycmVjdCByZXNvdXJjZSBmcmVlaW5nLCAoMikgbWlzc2luZyBjbGVhbnVwIG9m
IEpGUy1zcGVjaWZpYyBpbm9kZSBtZXRhZGF0YSwgb3IgKDMpIGNvcnJ1cHRpb24gb2YgaW5vZGUg
c3RhdGUgcHJpb3IgdG8gZXZpY3Rpb24uIg0KICAgIH0sDQogICAgInN0ZXBfNiI6IHsNCiAgICAg
ICJkZXNjcmlwdGlvbiI6ICJGdW5jdGlvbiBDbGFzc2lmaWNhdGlvbiBhbmQgTWFwcGluZyIsDQog
ICAgICAiZGV0YWlscyI6ICJLZXkgZnVuY3Rpb25zIGFuYWx5emVkOlxuLSBgamZzX2V2aWN0X2lu
b2RlYDogQ3Jhc2ggcG9pbnQsIGhhbmRsZXMgSkZTLXNwZWNpZmljIGlub2RlIGNsZWFudXBcbi0g
YGpmc190cnVuY2F0ZWAvYGpmc190cnVuY2F0ZV9ub2xvY2tgOiBDb3VsZCBsZWF2ZSBpbmNvbnNp
c3RlbnQgc3RhdGUgaWYgbm90IHByb3Blcmx5IGNsZWFuZWRcbi0gYGpmc193cml0ZV9pbm9kZWAv
YGpmc19jb21taXRfaW5vZGVgOiBJZiBtZXRhZGF0YSBpc24ndCBwcm9wZXJseSBzeW5jZWQgZWFy
bGllclxuLSBgamZzX2lnZXRgOiBJZiBpbm9kZSBpbml0aWFsaXphdGlvbiBpcyBpbmNvbXBsZXRl
XG4tIFZGUyBmdW5jdGlvbnMgKGBldmljdF9pbm9kZXNgLCBgaXB1dF9maW5hbGApIGFyZSBsZXNz
IGxpa2VseSBjdWxwcml0cyBhcyB0aGV5J3JlIGdlbmVyaWMiDQogICAgfSwNCiAgICAic3RlcF83
Ijogew0KICAgICAgImRlc2NyaXB0aW9uIjogIlN1c3BpY2lvbiBJbmZlcmVuY2UiLA0KICAgICAg
ImRldGFpbHMiOiAiUmFua2luZyBjcml0ZXJpYTpcbjEuIERpcmVjdCBpbnZvbHZlbWVudCBpbiBj
cmFzaCBwYXRoIChgamZzX2V2aWN0X2lub2RlYClcbjIuIEpGUy1zcGVjaWZpYyBjbGVhbnVwIGZ1
bmN0aW9uc1xuMy4gRnVuY3Rpb25zIHRoYXQgbW9kaWZ5IGlub2RlIHN0YXRlIHBlcnNpc3RlbnRs
eVxuNC4gRnVuY3Rpb25zIGNhbGxlZCBkdXJpbmcgZWFybGllciBwaGFzZXMgdGhhdCBtaWdodCBs
ZWF2ZSBpbmNvbnNpc3RlbnQgc3RhdGVcbjUuIFByZXNlbmNlIGluIHRvcCBzdXNwaWNpb3VzIGZp
bGVzIChmcy9qZnMvaW5vZGUuYyBpcyBwcmltYXJ5KSINCiAgICB9LA0KICAgICJzdGVwXzgiOiB7
DQogICAgICAiZGVzY3JpcHRpb24iOiAiRmluYWwgT3V0cHV0IiwNCiAgICAgICJkZXRhaWxzIjog
IlRvcCBzdXNwZWN0cyBhcmUgSkZTIGZ1bmN0aW9ucyBpbnZvbHZlZCBpbiBpbm9kZSBzdGF0ZSBt
YW5hZ2VtZW50IGFuZCBjbGVhbnVwLCBwYXJ0aWN1bGFybHkgdGhvc2UgdGhhdCBtaWdodCBsZWF2
ZSBpbmNvbnNpc3RlbnQgc3RhdGUgaWYgbm90IHByb3Blcmx5IGhhbmRsZWQgZHVyaW5nIGV2aWN0
aW9uLiINCiAgICB9DQogIH0sDQogICJzdGFuZGFyZF9vdXRwdXQiOiBbDQogICAgImpmc19ldmlj
dF9pbm9kZSIsDQogICAgImpmc190cnVuY2F0ZV9ub2xvY2siLA0KICAgICJqZnNfd3JpdGVfaW5v
ZGUiLA0KICAgICJqZnNfY29tbWl0X2lub2RlIiwNCiAgICAiamZzX2lnZXQiLA0KICAgICJqZnNf
ZGlydHlfaW5vZGUiLA0KICAgICJqZnNfdHJ1bmNhdGUiLA0KICAgICJqZnNfcmVsZWFzZXBhZ2Ui
LA0KICAgICJqZnNfaW52YWxpZGF0ZXBhZ2UiLA0KICAgICJldmljdF9pbm9kZXMiDQogIF0NCn0=
--000000000000cf2346063bd28dd2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--000000000000cf2346063bd28dd2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--000000000000cf2346063bd28dd2--

