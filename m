Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C6F3E46A0
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jg-0004bB-Ls; Mon, 09 Aug 2021 13:27:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcE-0008EG-M1; Sun, 08 Aug 2021 16:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=raAtZLZdnuRwQE3OPsmR+SoF9ZBtFUvo4c6wVs21y38=; b=N7ctugJMEqXX/DTi+Zf7VXLXmB
 6Oj/5oYqC+8rkNnlg3lbH2Svqksb6SxpKpYyWujs2cT+Q28iqhBk1pTJiZMkH/Cjvm7zrlWvSkDkt
 BlwMVEflNAwZ4uBl6ohXtRMi36AEgLpwz5r2UawIaTk44ZY8wLkwJS0PkfB956xBOztc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=raAtZLZdnuRwQE3OPsmR+SoF9ZBtFUvo4c6wVs21y38=; b=H49Ey9tzCX9Gijd5m6re1Owboq
 dzhyxpeLQS++u1kJH1JTOveQJwucXazR2LePV5DoXjzwx75ypTI0SJO9nCaevMsneMchqol82Rw0/
 wfQVa6/4PJa+MTp5/CM0/tcDBjurinyPgzMb6sXLhiYodOlLZpdCl8w1mCDoBPVoZqHs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcD-00GyXb-1x; Sun, 08 Aug 2021 16:25:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 73D1E61076;
 Sun,  8 Aug 2021 16:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439916;
 bh=GasSH2ltMgihtrZxt7291SJqZTLmkcU1VpHCFgltNrc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=fObJDeUqrX89ga6U+We2XUcAs9Qg9tGiJvGfL2aHjzN8jvbfNi2YtyJNibOcXef5D
 9yj4H7y8NNTAWGHsv7/iCq9oha194D9Am4Ok1EUzFLI7aixGqjUy9A81j2CyCWiSZ7
 wmQ/HGHZSK8aVbnAMs1IU1+f7W00lBFzNdOJLD3lC7NWrsMjtgPKKmhP8ySlOJPZrO
 WKmNOP2mwxlqbfwZjEO9ABZqLxFs/JLQbGdjupM5CbvqTGMCEuw1Y4zwg+6HhVbSOJ
 /DFMGe6bvCEy6VgtccycuXSakiQvXW+EpHyRCysn4qElmP9afGuyG02zq/jqyRpOb7
 Cza5BOQTz6nkg==
Received: by pali.im (Postfix)
 id 9217115B0; Sun,  8 Aug 2021 18:25:14 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "Theodore Y . Ts'o" <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dave Kleikamp <shaggy@kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun,  8 Aug 2021 18:24:37 +0200
Message-Id: <20210808162453.1653-5-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210808162453.1653-1-pali@kernel.org>
References: <20210808162453.1653-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mClcD-00GyXb-1x
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:39 +0000
Subject: [Jfs-discussion] [RFC PATCH 04/20] isofs: joliet: Fix
 iocharset=utf8 mount option
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

Q3VycmVudGx5IGlvY2hhcnNldD11dGY4IG1vdW50IG9wdGlvbiBpcyBicm9rZW4uIFRvIHVzZSBV
VEYtOCBhcyBpb2NoYXJzZXQsCml0IGlzIHJlcXVpcmVkIHRvIHVzZSB1dGY4IG1vdW50IG9wdGlv
bi4KCkZpeCBpb2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24gdG8gdXNlIGJlIGVxdWl2YWxlbnQg
dG8gdGhlIHV0ZjggbW91bnQKb3B0aW9uLgoKSWYgVVRGLTggYXMgaW9jaGFyc2V0IGlzIHVzZWQg
dGhlbiBzX25sc19pb2NoYXJzZXQgaXMgc2V0IHRvIE5VTEwuIFNvCnNpbXBsaWZ5IGNvZGUgYXJv
dW5kLCByZW1vdmUgc191dGY4IGZpZWxkIGFzIHRvIGRpc3Rpbmd1aXNoIGJldHdlZW4gVVRGLTgK
YW5kIG5vbi1VVEYtOCBpdCBpcyBuZWVkZWQganVzdCB0byBjaGVjayBpZiBzX25sc19pb2NoYXJz
ZXQgaXMgc2V0IHRvIE5VTEwKb3Igbm90LgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBh
bGlAa2VybmVsLm9yZz4KLS0tCiBmcy9pc29mcy9pbm9kZS5jICB8IDI3ICsrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLQogZnMvaXNvZnMvaXNvZnMuaCAgfCAgMSAtCiBmcy9pc29mcy9qb2xpZXQu
YyB8ICA0ICstLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvaXNvZnMvaW5vZGUuYyBiL2ZzL2lzb2ZzL2lub2RlLmMK
aW5kZXggMjFlZGM0MjNiNzlmLi42NzhlMmM1MWI4NTUgMTAwNjQ0Ci0tLSBhL2ZzL2lzb2ZzL2lu
b2RlLmMKKysrIGIvZnMvaXNvZnMvaW5vZGUuYwpAQCAtMTU1LDcgKzE1NSw2IEBAIHN0cnVjdCBp
c285NjYwX29wdGlvbnN7CiAJdW5zaWduZWQgaW50IG92ZXJyaWRlcm9ja3Blcm06MTsKIAl1bnNp
Z25lZCBpbnQgdWlkX3NldDoxOwogCXVuc2lnbmVkIGludCBnaWRfc2V0OjE7Ci0JdW5zaWduZWQg
aW50IHV0Zjg6MTsKIAl1bnNpZ25lZCBjaGFyIG1hcDsKIAl1bnNpZ25lZCBjaGFyIGNoZWNrOwog
CXVuc2lnbmVkIGludCBibG9ja3NpemU7CkBAIC0zNTYsNyArMzU1LDYgQEAgc3RhdGljIGludCBw
YXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBpc285NjYwX29wdGlvbnMgKnBvcHQp
CiAJcG9wdC0+Z2lkID0gR0xPQkFMX1JPT1RfR0lEOwogCXBvcHQtPnVpZCA9IEdMT0JBTF9ST09U
X1VJRDsKIAlwb3B0LT5pb2NoYXJzZXQgPSBOVUxMOwotCXBvcHQtPnV0ZjggPSAwOwogCXBvcHQt
Pm92ZXJyaWRlcm9ja3Blcm0gPSAwOwogCXBvcHQtPnNlc3Npb249LTE7CiAJcG9wdC0+c2JzZWN0
b3I9LTE7CkBAIC0zODksMTAgKzM4NywxMyBAQCBzdGF0aWMgaW50IHBhcnNlX29wdGlvbnMoY2hh
ciAqb3B0aW9ucywgc3RydWN0IGlzbzk2NjBfb3B0aW9ucyAqcG9wdCkKIAkJY2FzZSBPcHRfY3J1
ZnQ6CiAJCQlwb3B0LT5jcnVmdCA9IDE7CiAJCQlicmVhazsKKyNpZmRlZiBDT05GSUdfSk9MSUVU
CiAJCWNhc2UgT3B0X3V0Zjg6Ci0JCQlwb3B0LT51dGY4ID0gMTsKKwkJCWtmcmVlKHBvcHQtPmlv
Y2hhcnNldCk7CisJCQlwb3B0LT5pb2NoYXJzZXQgPSBrc3RyZHVwKCJ1dGY4IiwgR0ZQX0tFUk5F
TCk7CisJCQlpZiAoIXBvcHQtPmlvY2hhcnNldCkKKwkJCQlyZXR1cm4gMDsKIAkJCWJyZWFrOwot
I2lmZGVmIENPTkZJR19KT0xJRVQKIAkJY2FzZSBPcHRfaW9jaGFyc2V0OgogCQkJa2ZyZWUocG9w
dC0+aW9jaGFyc2V0KTsKIAkJCXBvcHQtPmlvY2hhcnNldCA9IG1hdGNoX3N0cmR1cCgmYXJnc1sw
XSk7CkBAIC00OTUsNyArNDk2LDYgQEAgc3RhdGljIGludCBpc29mc19zaG93X29wdGlvbnMoc3Ry
dWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZGVudHJ5ICpyb290KQogCWlmIChzYmktPnNfbm9jb21w
cmVzcykJCXNlcV9wdXRzKG0sICIsbm9jb21wcmVzcyIpOwogCWlmIChzYmktPnNfb3ZlcnJpZGVy
b2NrcGVybSkJc2VxX3B1dHMobSwgIixvdmVycmlkZXJvY2twZXJtIik7CiAJaWYgKHNiaS0+c19z
aG93YXNzb2MpCQlzZXFfcHV0cyhtLCAiLHNob3dhc3NvYyIpOwotCWlmIChzYmktPnNfdXRmOCkJ
CXNlcV9wdXRzKG0sICIsdXRmOCIpOwogCiAJaWYgKHNiaS0+c19jaGVjaykJCXNlcV9wcmludGYo
bSwgIixjaGVjaz0lYyIsIHNiaS0+c19jaGVjayk7CiAJaWYgKHNiaS0+c19tYXBwaW5nKQkJc2Vx
X3ByaW50ZihtLCAiLG1hcD0lYyIsIHNiaS0+c19tYXBwaW5nKTsKQEAgLTUxOCw5ICs1MTgsMTAg
QEAgc3RhdGljIGludCBpc29mc19zaG93X29wdGlvbnMoc3RydWN0IHNlcV9maWxlICptLCBzdHJ1
Y3QgZGVudHJ5ICpyb290KQogCQlzZXFfcHJpbnRmKG0sICIsZm1vZGU9JW8iLCBzYmktPnNfZm1v
ZGUpOwogCiAjaWZkZWYgQ09ORklHX0pPTElFVAotCWlmIChzYmktPnNfbmxzX2lvY2hhcnNldCAm
JgotCSAgICBzdHJjbXAoc2JpLT5zX25sc19pb2NoYXJzZXQtPmNoYXJzZXQsIENPTkZJR19OTFNf
REVGQVVMVCkgIT0gMCkKKwlpZiAoc2JpLT5zX25sc19pb2NoYXJzZXQpCiAJCXNlcV9wcmludGYo
bSwgIixpb2NoYXJzZXQ9JXMiLCBzYmktPnNfbmxzX2lvY2hhcnNldC0+Y2hhcnNldCk7CisJZWxz
ZQorCQlzZXFfcHV0cyhtLCAiLGlvY2hhcnNldD11dGY4Iik7CiAjZW5kaWYKIAlyZXR1cm4gMDsK
IH0KQEAgLTg2MywxNCArODY0LDEzIEBAIHN0YXRpYyBpbnQgaXNvZnNfZmlsbF9zdXBlcihzdHJ1
Y3Qgc3VwZXJfYmxvY2sgKnMsIHZvaWQgKmRhdGEsIGludCBzaWxlbnQpCiAJc2JpLT5zX25sc19p
b2NoYXJzZXQgPSBOVUxMOwogCiAjaWZkZWYgQ09ORklHX0pPTElFVAotCWlmIChqb2xpZXRfbGV2
ZWwgJiYgb3B0LnV0ZjggPT0gMCkgeworCWlmIChqb2xpZXRfbGV2ZWwpIHsKIAkJY2hhciAqcCA9
IG9wdC5pb2NoYXJzZXQgPyBvcHQuaW9jaGFyc2V0IDogQ09ORklHX05MU19ERUZBVUxUOwotCQlz
YmktPnNfbmxzX2lvY2hhcnNldCA9IGxvYWRfbmxzKHApOwotCQlpZiAoISBzYmktPnNfbmxzX2lv
Y2hhcnNldCkgewotCQkJLyogRmFpbCBvbmx5IGlmIGV4cGxpY2l0IGNoYXJzZXQgc3BlY2lmaWVk
ICovCi0JCQlpZiAob3B0LmlvY2hhcnNldCkKKwkJaWYgKHN0cmNtcChwLCAidXRmOCIpICE9IDAp
IHsKKwkJCXNiaS0+c19ubHNfaW9jaGFyc2V0ID0gb3B0LmlvY2hhcnNldCA/CisJCQkJbG9hZF9u
bHMob3B0LmlvY2hhcnNldCkgOiBsb2FkX25sc19kZWZhdWx0KCk7CisJCQlpZiAoIXNiaS0+c19u
bHNfaW9jaGFyc2V0KQogCQkJCWdvdG8gb3V0X2ZyZWVzYmk7Ci0JCQlzYmktPnNfbmxzX2lvY2hh
cnNldCA9IGxvYWRfbmxzX2RlZmF1bHQoKTsKIAkJfQogCX0KICNlbmRpZgpAQCAtODg2LDcgKzg4
Niw2IEBAIHN0YXRpYyBpbnQgaXNvZnNfZmlsbF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnMs
IHZvaWQgKmRhdGEsIGludCBzaWxlbnQpCiAJc2JpLT5zX2dpZCA9IG9wdC5naWQ7CiAJc2JpLT5z
X3VpZF9zZXQgPSBvcHQudWlkX3NldDsKIAlzYmktPnNfZ2lkX3NldCA9IG9wdC5naWRfc2V0Owot
CXNiaS0+c191dGY4ID0gb3B0LnV0Zjg7CiAJc2JpLT5zX25vY29tcHJlc3MgPSBvcHQubm9jb21w
cmVzczsKIAlzYmktPnNfb3ZlcnJpZGVyb2NrcGVybSA9IG9wdC5vdmVycmlkZXJvY2twZXJtOwog
CS8qCmRpZmYgLS1naXQgYS9mcy9pc29mcy9pc29mcy5oIGIvZnMvaXNvZnMvaXNvZnMuaAppbmRl
eCAwNTVlYzZjNTg2ZjcuLmRjZGMxOTFlZDE4MyAxMDA2NDQKLS0tIGEvZnMvaXNvZnMvaXNvZnMu
aAorKysgYi9mcy9pc29mcy9pc29mcy5oCkBAIC00NCw3ICs0NCw2IEBAIHN0cnVjdCBpc29mc19z
Yl9pbmZvIHsKIAl1bnNpZ25lZCBjaGFyIHNfc2Vzc2lvbjsKIAl1bnNpZ25lZCBpbnQgIHNfaGln
aF9zaWVycmE6MTsKIAl1bnNpZ25lZCBpbnQgIHNfcm9jazoyOwotCXVuc2lnbmVkIGludCAgc191
dGY4OjE7CiAJdW5zaWduZWQgaW50ICBzX2NydWZ0OjE7IC8qIEJyb2tlbiBkaXNrcyB3aXRoIGhp
Z2ggYnl0ZSBvZiBsZW5ndGgKIAkJCQkgICogY29udGFpbmluZyBqdW5rICovCiAJdW5zaWduZWQg
aW50ICBzX25vY29tcHJlc3M6MTsKZGlmZiAtLWdpdCBhL2ZzL2lzb2ZzL2pvbGlldC5jIGIvZnMv
aXNvZnMvam9saWV0LmMKaW5kZXggYmU4YjZhOWQwYjkyLi5jMGYwNGExZTdmNjkgMTAwNjQ0Ci0t
LSBhL2ZzL2lzb2ZzL2pvbGlldC5jCisrKyBiL2ZzL2lzb2ZzL2pvbGlldC5jCkBAIC00MSwxNCAr
NDEsMTIgQEAgdW5pMTZfdG9feDgodW5zaWduZWQgY2hhciAqYXNjaWksIF9fYmUxNiAqdW5pLCBp
bnQgbGVuLCBzdHJ1Y3QgbmxzX3RhYmxlICpubHMpCiBpbnQKIGdldF9qb2xpZXRfZmlsZW5hbWUo
c3RydWN0IGlzb19kaXJlY3RvcnlfcmVjb3JkICogZGUsIHVuc2lnbmVkIGNoYXIgKm91dG5hbWUs
IHN0cnVjdCBpbm9kZSAqIGlub2RlKQogewotCXVuc2lnbmVkIGNoYXIgdXRmODsKIAlzdHJ1Y3Qg
bmxzX3RhYmxlICpubHM7CiAJdW5zaWduZWQgY2hhciBsZW4gPSAwOwogCi0JdXRmOCA9IElTT0ZT
X1NCKGlub2RlLT5pX3NiKS0+c191dGY4OwogCW5scyA9IElTT0ZTX1NCKGlub2RlLT5pX3NiKS0+
c19ubHNfaW9jaGFyc2V0OwogCi0JaWYgKHV0ZjgpIHsKKwlpZiAoIW5scykgewogCQlsZW4gPSB1
dGYxNnNfdG9fdXRmOHMoKGNvbnN0IHdjaGFyX3QgKikgZGUtPm5hbWUsCiAJCQkJZGUtPm5hbWVf
bGVuWzBdID4+IDEsIFVURjE2X0JJR19FTkRJQU4sCiAJCQkJb3V0bmFtZSwgUEFHRV9TSVpFKTsK
LS0gCjIuMjAuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2pmcy1kaXNjdXNzaW9uCg==
