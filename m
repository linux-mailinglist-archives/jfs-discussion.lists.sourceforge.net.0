Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D7CA68DE4
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Mar 2025 14:33:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tutX1-0000MU-FK;
	Wed, 19 Mar 2025 13:32:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leo.fthirata@gmail.com>) id 1tuj8f-0003Ed-OV
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Mar 2025 02:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U4vsXeepUEeOxZqJcsKC+HZWnLPWtFYoYFR/7gQya3w=; b=bEDd/mwo8jEy59JZ+qRk8c/eMG
 dkw+BG+vdW2vZRS/xjjoVFkQW9fsTm/89xgibDR0pDYEemVsBPGpWJiq9TqKK2n2seXWbtQFt/xcg
 ENRHzZskRVXL+Cbp6jbbCL1229NYw5BStZZneEU+1QA02d62IMoHAXv+Ysm8gTeXzNqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U4vsXeepUEeOxZqJcsKC+HZWnLPWtFYoYFR/7gQya3w=; b=f
 G9qAmGZTc3ZyTC8corOzafg0FjYd54ceJ8YH0CeUa895oQVjhefUd7XwviubKT9Z81vcn77rf+53Z
 aectEq+VLgkqalA82WDVQ9bRnBVLSNTWyoPwxpSCOOQLKUnNhMsp/0ih1y/JiV9Q1H6Nm3CTbO+xZ
 qFVodExdH7WANp4Y=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tuj8f-0000gR-5B for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Mar 2025 02:26:37 +0000
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-5e6f4b3ebe5so10723468a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 18 Mar 2025 19:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742351185; x=1742955985; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=U4vsXeepUEeOxZqJcsKC+HZWnLPWtFYoYFR/7gQya3w=;
 b=IhODtb1vwf1P/x80pjOTrJtINXCzQWNS24BXvL/FU3Ry/teq9t54m0Kaq75gm/OxhS
 x6W+ILyR2FsCqi4KVuAt0hAQ/b4+Fm705zXMSMkYrFHmaK653h+zJvXHS2Wnv5Dkz3Z/
 +UFcZqovKYtVTqEi9R1wwktmS59w+nTZfdmpM80YoMXFnfm/xgfO1k9ei2UERgJfjrA+
 nCjTvRyDjEvYSivNKrGQQOQA7paO1/ZWqDhA6tg2mNownqE442V4UL9urPFPH2fBm+Ku
 Ik3SdJruCM83zUv8jPDiUEU+qEEukJW4vJ9GVpUxqSbb9VzKfr1s16+hp7zUE8szikSv
 MwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742351185; x=1742955985;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=U4vsXeepUEeOxZqJcsKC+HZWnLPWtFYoYFR/7gQya3w=;
 b=Qiu7yyUi7w/nka3djtpDnAm3CLpzIK9/s+DamCiXKc3QA79J4n8o+v2TowrXiAIjsi
 fAJ2j9Gaz+NriFQD+i9lubRTWSXMdsEuKh05+siqzZcNSd+gWttRlZB08Uqe0Y2FNCSf
 eOInSxruvZBJGg7I8TCWs7rI9B6HNf4uK2paJfjPX1lBy411Njxtr6aPwBFLSJEiA7u6
 T2nCYM2v40DK0fJb07+j+8uGYW4m9WrHzAC4GLpwu+GmaFuOluQ5Tg/IQBqfjJigaMcu
 5oLbS0oc5kjelHOcJXrt03/e1J0jeQgmjniLfqPUZ+Oo2nFFdHV/VpgLO8W0XX35YN79
 momg==
X-Gm-Message-State: AOJu0YxThOnsYCdSSX9/F8IVsrEhWTp6fcNsqZ+cF4BQlkoQ1aNt5QaN
 cMcqRNWS/fPZ8ApbJFNsG3jlyM+dKuaT0xRLnywmRYR56I427hHwr2Jb4qFKdL1NBNj5GPIIngi
 DPeUKsB5hLbBla2qjcE1jHt4abR8=
X-Gm-Gg: ASbGncvxv1bAzqPHw7IA1J2qIiBN4GvQtJ+j9K60m0YCBIvHHCB8pgG7woL2CL5n1vj
 vOJQWbtiYgnudSBCU46ce/E03p5VO1i8oKJh9PzFG8pbzAeApNPV+6qYl8WBeCMRpBBF0wVdGhq
 q432OLr5fK0UQgK6gizm/hEbhnSgrMYmaPUJMn4mSL3XGvZD370KJ+ILXLBQ==
X-Google-Smtp-Source: AGHT+IFsG3fmL3Hguq5glwa/DW+tCUwqRDNICUy1/upZyz49sCZT2EcJ3eibobo87bcUwByQlvJhIRv/KJBoPaxisNE=
X-Received: by 2002:a05:6402:354c:b0:5e6:1353:1319 with SMTP id
 4fb4d7f45d1cf-5eb80d156f3mr728522a12.12.1742351185221; Tue, 18 Mar 2025
 19:26:25 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 18 Mar 2025 23:26:13 -0300
X-Gm-Features: AQ5f1Jp5fB_vAw4l9MAoMzV08w9YPFb-wDcDpoFxf4kfNEyuUG1HEIG7El-IgKw
Message-ID: <CAN-A22rSAtYqRNA_OtFUViY44fjV=sKRbnYHonEJtm2eSN8vyA@mail.gmail.com>
To: syzbot+4f9c823a6f63d87491ba@syzkaller.appspotmail.com
Content-Type: multipart/mixed; boundary="000000000000784c0e0630a8bf86"
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: #syz test #syz test From
 d2015dde38d6f730eabdc613eb26f7c59daa9cab
 Mon Sep 17 00:00:00 2001 From: Leonardo Felipe Takao Hirata Date: Tue, 18
 Mar 2025 22:03:57 -0300 Subject: [PATCH] jfs: Add check for array bounds
 in dt [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.52 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.52 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [leo.fthirata[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.52 listed in list.dnswl.org]
X-Headers-End: 1tuj8f-0000gR-5B
X-Mailman-Approved-At: Wed, 19 Mar 2025 13:32:26 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in dtDelete
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
From: Leonardo Hirata via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Leonardo Hirata <leo.fthirata@gmail.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--000000000000784c0e0630a8bf86
Content-Type: multipart/alternative; boundary="000000000000784c0d0630a8bf84"

--000000000000784c0d0630a8bf84
Content-Type: text/plain; charset="UTF-8"

#syz test

--000000000000784c0d0630a8bf84
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">#syz test</div>

--000000000000784c0d0630a8bf84--
--000000000000784c0e0630a8bf86
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-jfs-Add-check-for-array-bounds-in-dtReadFirst.patch"
Content-Disposition: attachment; 
	filename="0001-jfs-Add-check-for-array-bounds-in-dtReadFirst.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m8fasjvs0>
X-Attachment-Id: f_m8fasjvs0

RnJvbSBkMjAxNWRkZTM4ZDZmNzMwZWFiZGM2MTNlYjI2ZjdjNTlkYWE5Y2FiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBMZW9uYXJkbyBGZWxpcGUgVGFrYW8gSGlyYXRhIDxsZW8uZnRo
aXJhdGFAZ21haWwuY29tPgpEYXRlOiBUdWUsIDE4IE1hciAyMDI1IDIyOjAzOjU3IC0wMzAwClN1
YmplY3Q6IFtQQVRDSF0gamZzOiBBZGQgY2hlY2sgZm9yIGFycmF5IGJvdW5kcyBpbiBkdFJlYWRG
aXJzdAoKQWRkIGEgY2hlY2sgZm9yIGluZGV4IG91dCBvZiBib3VuZC4KClNpZ25lZC1vZmYtYnk6
IExlb25hcmRvIEZlbGlwZSBUYWthbyBIaXJhdGEgPGxlby5mdGhpcmF0YUBnbWFpbC5jb20+Ci0t
LQogZnMvamZzL2pmc19kdHJlZS5jIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc19kdHJlZS5jIGIvZnMvamZzL2pmc19k
dHJlZS5jCmluZGV4IDhmODUxNzdmMjg0Yi4uNGUyOWY4YzdkNjI0IDEwMDY0NAotLS0gYS9mcy9q
ZnMvamZzX2R0cmVlLmMKKysrIGIvZnMvamZzL2pmc19kdHJlZS5jCkBAIC0yMTI4LDYgKzIxMjgs
MTMgQEAgaW50IGR0RGVsZXRlKHRpZF90IHRpZCwKIAkJCQkJbmV4dF9pbmRleCA9IC0xOwogCQkJ
CWVsc2UgewogCQkJCQlzdGJsID0gRFRfR0VUU1RCTChucCk7CisKKwkJCQkJaWYgKHN0YmxbMF0g
PCAwIHx8IHN0YmxbMF0gPiAxMjcpIHsKKwkJCQkJCURUX1BVVFBBR0UobXApOworCQkJCQkJamZz
X2Vycm9yKGlwLT5pX3NiLCAic3RibFswXSBvdXQgb2YgYm91bmRcbiIpOworCQkJCQkJcmV0dXJu
IC1FSU87CisJCQkJCX0KKwogCQkJCQlsZHRlbnRyeSA9CiAJCQkJCSAgICAoc3RydWN0IGxkdGVu
dHJ5ICopICYgbnAtPgogCQkJCQkgICAgc2xvdFtzdGJsWzBdXTsKLS0gCjIuNDMuMAoK
--000000000000784c0e0630a8bf86
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--000000000000784c0e0630a8bf86
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--000000000000784c0e0630a8bf86--

