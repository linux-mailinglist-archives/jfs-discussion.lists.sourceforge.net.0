Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3769A656321
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMv-00036k-Q0;
	Mon, 26 Dec 2022 14:22:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMs-00035I-CF;
 Mon, 26 Dec 2022 14:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=moFyKzKiRS792TVYHk/a6QpyU+oK5idvR2lLvDiIdvo=; b=gVuEJyWtBOxzIqP87YdxNm/qHu
 w+BA1vfcQAfPrBRxbqKggm9KUakEN8uuuOEjynIPciyeG4P42VFRPpc8X5yvWIxA6iDMXNmnDu/M5
 waS/23O6aT7nQySGyLmfEMJXJYyBi3GokS3E1oBSDpM2BaiHdSmGlxVNdtShWTFsdWKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=moFyKzKiRS792TVYHk/a6QpyU+oK5idvR2lLvDiIdvo=; b=QcfJPxPcfA5adGXdLI2MaDa7jR
 +untc6n4Tkr4UTCR3cVai+WVOdIR4wVLslLd7Z5SGU/Dhjd0Asg+zG/q7hWiPGx0LBvwb0loTNvMi
 mcuCtg18Pskcw7mb39ZJZ9tQ4vv8o8rS5GrN3Vc23imwQOQRZdOUt/Ke9nd4knSttA4Y=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMr-00DHhc-Ni; Mon, 26 Dec 2022 14:22:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 58FB260EB6;
 Mon, 26 Dec 2022 14:22:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3473C433D2;
 Mon, 26 Dec 2022 14:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064532;
 bh=Xsp3m3OsW4jVnQPkMQLxfCHZ/XiAut6pdb2ruAApCB4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Up4OAqH55iaCAJw883S9943eBNly3aIMlynhdSIFfKbVseamKeJfQH0MxLPkAHuPa
 0RO+8XOWxMOAchvnruly8oZKaVEQHv93la8lc8DwyAqnDlp/+ol3zsBzwGycA5kTs3
 PiipsjZFO53qGXeQAlkyrZ2Iet0frsmuqAA9GT26/1kj2XkqsT9ysgskuXT64p/YCW
 NdTkq630GuiyNhUfa+c2ohwTj+LBm3CEJKAf/qfyCBgrckS9wp2z+abpEpNKo+7RC4
 qzXqOV8xr4EQF3Y0KwHx44xvTMy2W5MYRu++4b1Ux+ux6ypyB58J8MsaHiompDhxdR
 lLWkEteZYAALA==
Received: by pali.im (Postfix)
 id 8C8A49D7; Mon, 26 Dec 2022 15:22:11 +0100 (CET)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Anton Altaparmakov <anton@tuxera.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Steve French <sfrench@samba.org>,
 Paulo Alcantara <pc@cjr.nz>, Ronnie Sahlberg <lsahlber@redhat.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Pavel Machek <pavel@ucw.cz>,
 Christoph Hellwig <hch@infradead.org>,
 Kari Argillander <kari.argillander@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>
Date: Mon, 26 Dec 2022 15:21:42 +0100
Message-Id: <20221226142150.13324-11-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: NLS table for utf8 is broken and cannot be fixed. So instead
 of broken utf8 nls functions char2uni() and uni2char() use functions
 utf8_to_utf32()
 and utf32_to_utf8() which implements correct encoding and decoding between
 Unicode code points and UTF-8 [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMr-00DHhc-Ni
Subject: [Jfs-discussion] [RFC PATCH v2 10/18] hfs: Do not use broken utf8
 NLS table for iocharset=utf8 mount option
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TkxTIHRhYmxlIGZvciB1dGY4IGlzIGJyb2tlbiBhbmQgY2Fubm90IGJlIGZpeGVkLgoKU28gaW5z
dGVhZCBvZiBicm9rZW4gdXRmOCBubHMgZnVuY3Rpb25zIGNoYXIydW5pKCkgYW5kIHVuaTJjaGFy
KCkgdXNlCmZ1bmN0aW9ucyB1dGY4X3RvX3V0ZjMyKCkgYW5kIHV0ZjMyX3RvX3V0ZjgoKSB3aGlj
aCBpbXBsZW1lbnRzIGNvcnJlY3QKZW5jb2RpbmcgYW5kIGRlY29kaW5nIGJldHdlZW4gVW5pY29k
ZSBjb2RlIHBvaW50cyBhbmQgVVRGLTggc2VxdWVuY2UuCgpXaGVuIGlvY2hhdHNldD11dGY4IGlz
IHVzZWQgdGhlbiBzZXQgaHNiLT5ubHNfaW8gdG8gTlVMTCBhbmQgdXNlIGl0IGZvcgpkaXN0aW5n
dWlzaCBiZXR3ZWVuIHRoZSBmYWN0IGlmIE5MUyB0YWJsZSBvciBuYXRpdmUgVVRGLTggZnVuY3Rp
b25zIHNob3VsZApiZSB1c2VkLgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2Vy
bmVsLm9yZz4KLS0tCiBmcy9oZnMvc3VwZXIuYyB8IDMzICsrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLQogZnMvaGZzL3RyYW5zLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKy0tLS0K
IDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZnMvaGZzL3N1cGVyLmMgYi9mcy9oZnMvc3VwZXIuYwppbmRleCBjZWExOWVkMDZi
Y2UuLjVhNjNkZjQxZGEwNSAxMDA2NDQKLS0tIGEvZnMvaGZzL3N1cGVyLmMKKysrIGIvZnMvaGZz
L3N1cGVyLmMKQEAgLTE0OSwxMCArMTQ5LDEzIEBAIHN0YXRpYyBpbnQgaGZzX3Nob3dfb3B0aW9u
cyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgc3RydWN0IGRlbnRyeSAqcm9vdCkKIAkJc2VxX3ByaW50
ZihzZXEsICIscGFydD0ldSIsIHNiaS0+cGFydCk7CiAJaWYgKHNiaS0+c2Vzc2lvbiA+PSAwKQog
CQlzZXFfcHJpbnRmKHNlcSwgIixzZXNzaW9uPSV1Iiwgc2JpLT5zZXNzaW9uKTsKLQlpZiAoc2Jp
LT5ubHNfZGlzaykKKwlpZiAoc2JpLT5ubHNfZGlzaykgewogCQlzZXFfcHJpbnRmKHNlcSwgIixj
b2RlcGFnZT0lcyIsIHNiaS0+bmxzX2Rpc2stPmNoYXJzZXQpOwotCWlmIChzYmktPm5sc19pbykK
LQkJc2VxX3ByaW50ZihzZXEsICIsaW9jaGFyc2V0PSVzIiwgc2JpLT5ubHNfaW8tPmNoYXJzZXQp
OworCQlpZiAoc2JpLT5ubHNfaW8pCisJCQlzZXFfcHJpbnRmKHNlcSwgIixpb2NoYXJzZXQ9JXMi
LCBzYmktPm5sc19pby0+Y2hhcnNldCk7CisJCWVsc2UKKwkJCXNlcV9wdXRzKHNlcSwgIixpb2No
YXJzZXQ9dXRmOCIpOworCX0KIAlpZiAoc2JpLT5zX3F1aWV0KQogCQlzZXFfcHJpbnRmKHNlcSwg
IixxdWlldCIpOwogCXJldHVybiAwOwpAQCAtMjI1LDYgKzIyOCw3IEBAIHN0YXRpYyBpbnQgcGFy
c2Vfb3B0aW9ucyhjaGFyICpvcHRpb25zLCBzdHJ1Y3QgaGZzX3NiX2luZm8gKmhzYikKIAljaGFy
ICpwOwogCXN1YnN0cmluZ190IGFyZ3NbTUFYX09QVF9BUkdTXTsKIAlpbnQgdG1wLCB0b2tlbjsK
Kwlib29sIGhhdmVfaW9jaGFyc2V0OwogCiAJLyogaW5pdGlhbGl6ZSB0aGUgc2Igd2l0aCBkZWZh
dWx0cyAqLwogCWhzYi0+c191aWQgPSBjdXJyZW50X3VpZCgpOwpAQCAtMjM5LDYgKzI0Myw4IEBA
IHN0YXRpYyBpbnQgcGFyc2Vfb3B0aW9ucyhjaGFyICpvcHRpb25zLCBzdHJ1Y3QgaGZzX3NiX2lu
Zm8gKmhzYikKIAlpZiAoIW9wdGlvbnMpCiAJCXJldHVybiAxOwogCisJaGF2ZV9pb2NoYXJzZXQg
PSBmYWxzZTsKKwogCXdoaWxlICgocCA9IHN0cnNlcCgmb3B0aW9ucywgIiwiKSkgIT0gTlVMTCkg
ewogCQlpZiAoISpwKQogCQkJY29udGludWU7CkBAIC0zMzIsMTggKzMzOCwyMiBAQCBzdGF0aWMg
aW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IGhmc19zYl9pbmZvICpoc2Ip
CiAJCQlrZnJlZShwKTsKIAkJCWJyZWFrOwogCQljYXNlIG9wdF9pb2NoYXJzZXQ6Ci0JCQlpZiAo
aHNiLT5ubHNfaW8pIHsKKwkJCWlmIChoYXZlX2lvY2hhcnNldCkgewogCQkJCXByX2VycigidW5h
YmxlIHRvIGNoYW5nZSBpb2NoYXJzZXRcbiIpOwogCQkJCXJldHVybiAwOwogCQkJfQogCQkJcCA9
IG1hdGNoX3N0cmR1cCgmYXJnc1swXSk7Ci0JCQlpZiAocCkKLQkJCQloc2ItPm5sc19pbyA9IGxv
YWRfbmxzKHApOwotCQkJaWYgKCFoc2ItPm5sc19pbykgewotCQkJCXByX2VycigidW5hYmxlIHRv
IGxvYWQgaW9jaGFyc2V0IFwiJXNcIlxuIiwgcCk7Ci0JCQkJa2ZyZWUocCk7CisJCQlpZiAoIXAp
CiAJCQkJcmV0dXJuIDA7CisJCQlpZiAoc3RyY21wKHAsICJ1dGY4IikgIT0gMCkgeworCQkJCWhz
Yi0+bmxzX2lvID0gbG9hZF9ubHMocCk7CisJCQkJaWYgKCFoc2ItPm5sc19pbykgeworCQkJCQlw
cl9lcnIoInVuYWJsZSB0byBsb2FkIGlvY2hhcnNldCBcIiVzXCJcbiIsIHApOworCQkJCQlrZnJl
ZShwKTsKKwkJCQkJcmV0dXJuIDA7CisJCQkJfQogCQkJfQorCQkJaGF2ZV9pb2NoYXJzZXQgPSB0
cnVlOwogCQkJa2ZyZWUocCk7CiAJCQlicmVhazsKIAkJZGVmYXVsdDoKQEAgLTM1MSw3ICszNjEs
NyBAQCBzdGF0aWMgaW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IGhmc19z
Yl9pbmZvICpoc2IpCiAJCX0KIAl9CiAKLQlpZiAoaHNiLT5ubHNfaW8gJiYgIWhzYi0+bmxzX2Rp
c2spIHsKKwlpZiAoaGF2ZV9pb2NoYXJzZXQgJiYgIWhzYi0+bmxzX2Rpc2spIHsKIAkJLyoKIAkJ
ICogUHJldmlvdXMgdmVyc2lvbiBvZiBoZnMgZHJpdmVyIGRpZCBzb21ldGhpbmcgdW5leHBlY3Rl
ZDoKIAkJICogV2hlbiBjb2RlcGFnZSB3YXMgbm90IGRlZmluZWQgYnV0IGlvY2hhcnNldCB3YXMg
dGhlbgpAQCAtMzgyLDcgKzM5Miw4IEBAIHN0YXRpYyBpbnQgcGFyc2Vfb3B0aW9ucyhjaGFyICpv
cHRpb25zLCBzdHJ1Y3QgaGZzX3NiX2luZm8gKmhzYikKIAkJCXJldHVybiAwOwogCQl9CiAJfQot
CWlmIChoc2ItPm5sc19kaXNrICYmICFoc2ItPm5sc19pbykgeworCWlmIChoc2ItPm5sc19kaXNr
ICYmCisJICAgICFoYXZlX2lvY2hhcnNldCAmJiBzdHJjbXAoQ09ORklHX05MU19ERUZBVUxULCAi
dXRmOCIpICE9IDApIHsKIAkJaHNiLT5ubHNfaW8gPSBsb2FkX25sc19kZWZhdWx0KCk7CiAJCWlm
ICghaHNiLT5ubHNfaW8pIHsKIAkJCXByX2VycigidW5hYmxlIHRvIGxvYWQgZGVmYXVsdCBpb2No
YXJzZXRcbiIpOwpkaWZmIC0tZ2l0IGEvZnMvaGZzL3RyYW5zLmMgYi9mcy9oZnMvdHJhbnMuYwpp
bmRleCBkYmY1MzVkNTJkMzcuLjAxZjM3YjM5NWYxMCAxMDA2NDQKLS0tIGEvZnMvaGZzL3RyYW5z
LmMKKysrIGIvZnMvaGZzL3RyYW5zLmMKQEAgLTQ0LDcgKzQ0LDcgQEAgaW50IGhmc19tYWMyYXNj
KHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIGNoYXIgKm91dCwgY29uc3Qgc3RydWN0IGhmc19uYW1l
ICppbikKIAkJc3JjbGVuID0gSEZTX05BTUVMRU47CiAJZHN0ID0gb3V0OwogCWRzdGxlbiA9IEhG
U19NQVhfTkFNRUxFTjsKLQlpZiAobmxzX2lvKSB7CisJaWYgKG5sc19kaXNrKSB7CiAJCXdjaGFy
X3QgY2g7CiAKIAkJd2hpbGUgKHNyY2xlbiA+IDApIHsKQEAgLTU3LDcgKzU3LDEyIEBAIGludCBo
ZnNfbWFjMmFzYyhzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCBjaGFyICpvdXQsIGNvbnN0IHN0cnVj
dCBoZnNfbmFtZSAqaW4pCiAJCQlzcmNsZW4gLT0gc2l6ZTsKIAkJCWlmIChjaCA9PSAnLycpCiAJ
CQkJY2ggPSAnOic7Ci0JCQlzaXplID0gbmxzX2lvLT51bmkyY2hhcihjaCwgZHN0LCBkc3RsZW4p
OworCQkJaWYgKG5sc19pbykKKwkJCQlzaXplID0gbmxzX2lvLT51bmkyY2hhcihjaCwgZHN0LCBk
c3RsZW4pOworCQkJZWxzZSBpZiAoZHN0bGVuID4gMCkKKwkJCQlzaXplID0gdXRmMzJfdG9fdXRm
OChjaCwgZHN0LCBkc3RsZW4pOworCQkJZWxzZQorCQkJCXNpemUgPSAtRU5BTUVUT09MT05HOwog
CQkJaWYgKHNpemUgPCAwKSB7CiAJCQkJaWYgKHNpemUgPT0gLUVOQU1FVE9PTE9ORykKIAkJCQkJ
Z290byBvdXQ7CkBAIC0xMDEsMTEgKzEwNiwyMiBAQCB2b2lkIGhmc19hc2MybWFjKHN0cnVjdCBz
dXBlcl9ibG9jayAqc2IsIHN0cnVjdCBoZnNfbmFtZSAqb3V0LCBjb25zdCBzdHJ1Y3QgcXN0cgog
CXNyY2xlbiA9IGluLT5sZW47CiAJZHN0ID0gb3V0LT5uYW1lOwogCWRzdGxlbiA9IEhGU19OQU1F
TEVOOwotCWlmIChubHNfaW8pIHsKKwlpZiAobmxzX2Rpc2spIHsKIAkJd2NoYXJfdCBjaDsKKwkJ
dW5pY29kZV90IHU7CiAKIAkJd2hpbGUgKHNyY2xlbiA+IDAgJiYgZHN0bGVuID4gMCkgewotCQkJ
c2l6ZSA9IG5sc19pby0+Y2hhcjJ1bmkoc3JjLCBzcmNsZW4sICZjaCk7CisJCQlpZiAobmxzX2lv
KQorCQkJCXNpemUgPSBubHNfaW8tPmNoYXIydW5pKHNyYywgc3JjbGVuLCAmY2gpOworCQkJZWxz
ZSB7CisJCQkJc2l6ZSA9IHV0ZjhfdG9fdXRmMzIoc3JjLCBzcmNsZW4sICZ1KTsKKwkJCQlpZiAo
c2l6ZSA+PSAwKSB7CisJCQkJCWlmICh1IDw9IE1BWF9XQ0hBUl9UKQorCQkJCQkJY2ggPSB1Owor
CQkJCQllbHNlCisJCQkJCQlzaXplID0gLUVJTlZBTDsKKwkJCQl9CisJCQl9CiAJCQlpZiAoc2l6
ZSA8IDApIHsKIAkJCQljaCA9ICc/JzsKIAkJCQlzaXplID0gMTsKLS0gCjIuMjAuMQoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
