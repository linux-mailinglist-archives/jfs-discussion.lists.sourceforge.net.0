Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAB765631B
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMt-0006Tn-LA;
	Mon, 26 Dec 2022 14:22:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMs-0006T8-61;
 Mon, 26 Dec 2022 14:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vIQ9MnokPhKi52SKyUlpj47RS/HXqiFKM0jytnsflH8=; b=S8BfmcLXvJWgSdGrXnlsO/VLU3
 VF/CeU+9nHtMteTbkSwUxCa03C53Io/kqR97NhBQ3ACJHZFZt/zTp/BJQVaKtqB+ZdUz5MwZd0AAt
 GjgOdvhIW0MyZJ+p4aW9q+/d9oDU0ifChIZygKwZ/ZgEY3UpkDWHHZsPEbAOVhyxErco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vIQ9MnokPhKi52SKyUlpj47RS/HXqiFKM0jytnsflH8=; b=CKpjgGkNDC3vciJMr4STFrsIgZ
 n2UUdNzJTjjJEu996IDDNvBSBzevdxy5b9dxxJ3yotYcjerl78YUu/e2K46hDumZhvaYn5BdSxKqq
 e9+pSrqDQy/xSEOm8OXFgg6UDNjMV3slWP01ItLlz4chkioYJztVJCo3qzBdkiYDp2SE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMr-0002CE-F8; Mon, 26 Dec 2022 14:22:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 149AE60EC8;
 Mon, 26 Dec 2022 14:22:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3ACBC4339B;
 Mon, 26 Dec 2022 14:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064531;
 bh=e4FwSq1/2Vygd9UHJiO4l6thoqlGGbMWoa45GXTb6aQ=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=bXPSBq/bP7mDyKk/wd7W2JTWVlPXVT2RboTFlj9iSVPG35ulA+hgbCALFNyvoXpAK
 Yzx7mAKXyDpUHW94zb7wQL8yTchXrjXuuat00MS5ai8YUUD0012uIT4a5QiKrben11
 NiCBuc4j+WeR06kzqsy28JXcIIE6y+D28+aE+zwpIREYdOSEgPGowa1iHU/YDo8dzW
 EDUPDrgHTcuWSdij1wFlpD7SH5tOX3XQmKdIqRVayV6bWYMjfxjNz2Z7B7fMS4XACc
 N5+iICo51y3MEYVCT6SMx5h1Hb+Klz6/2ZgMj20wf0bPyTD31iHliqfFx2bD/geecu
 dLKaXbfGnsmnw==
Received: by pali.im (Postfix)
 id 8CD359D7; Mon, 26 Dec 2022 15:22:10 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:41 +0100
Message-Id: <20221226142150.13324-10-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It does not make any sense to set hsb->nls_io (NLS iocharset
 used between VFS and hfs driver) when hsb->nls_disk (NLS codepage used between
 hfs driver and disk) is not set. Reverse engineering driver code shown what
 is doing in this special case: 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMr-0002CE-F8
Subject: [Jfs-discussion] [RFC PATCH v2 09/18] hfs: Explicitly set
 hsb->nls_disk when hsb->nls_io is set
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

SXQgZG9lcyBub3QgbWFrZSBhbnkgc2Vuc2UgdG8gc2V0IGhzYi0+bmxzX2lvIChOTFMgaW9jaGFy
c2V0IHVzZWQgYmV0d2VlbgpWRlMgYW5kIGhmcyBkcml2ZXIpIHdoZW4gaHNiLT5ubHNfZGlzayAo
TkxTIGNvZGVwYWdlIHVzZWQgYmV0d2VlbiBoZnMKZHJpdmVyIGFuZCBkaXNrKSBpcyBub3Qgc2V0
LgoKUmV2ZXJzZSBlbmdpbmVlcmluZyBkcml2ZXIgY29kZSBzaG93biB3aGF0IGlzIGRvaW5nIGlu
IHRoaXMgc3BlY2lhbCBjYXNlOgoKICAgIFdoZW4gY29kZXBhZ2Ugd2FzIG5vdCBkZWZpbmVkIGJ1
dCBpb2NoYXJzZXQgd2FzIHRoZW4KICAgIGhmcyBkcml2ZXIgY29waWVkIDhiaXQgY2hhcmFjdGVy
IGZyb20gZGlzayBkaXJlY3RseSB0bwogICAgMTZiaXQgdW5pY29kZSB3Y2hhcl90IHR5cGUuIFdo
aWNoIG1lYW5zIGl0IGRpZCBjb252ZXJzaW9uCiAgICBmcm9tIExhdGluMSAoSVNPLTg4NTktMSkg
dG8gVW5pY29kZSBiZWNhdXNlIGZpcnN0IDI1NgogICAgVW5pY29kZSBjb2RlIHBvaW50cyBtYXRj
aGVzIDhiaXQgSVNPLTg4NTktMSBjb2RlcGFnZSB0YWJsZS4KICAgIFNvIHdoZW4gaW9jaGFyc2V0
IHdhcyBzcGVjaWZpZWQgYW5kIGNvZGVwYWdlIG5vdCwgdGhlbgogICAgY29kZXBhZ2UgdXNlZCBp
bXBsaWNpdCB2YWx1ZSAiaXNvODg1OS0xIi4KClNvIHdoZW4gaHNiLT5ubHNfZGlzayBpcyBub3Qg
c2V0IGFuZCBoc2ItPm5sc19pbyBpcyB0aGVuIGV4cGxpY2l0bHkgc2V0CmhzYi0+bmxzX2Rpc2sg
dG8gImlzbzg4NTktMSIuCgpTdWNoIHNldHVwIGlzIG9idmlvdXNseSBpbmNvbXBhdGlibGUgd2l0
aCBNYWMgT1Mgc3lzdGVtcyBhcyB0aGV5IGRvIG5vdApzdXBwb3J0IGlzbzg4NTktMSBlbmNvZGlu
ZyBmb3IgaGZzLiBTbyBwcmludCB3YXJuaW5nIGludG8gZG1lc2cgYWJvdXQgdGhpcwpmYWN0LgoK
QWZ0ZXIgdGhpcyBjaGFuZ2UgaHNiLT5ubHNfZGlzayBpcyBhbHdheXMgc2V0LCBzbyByZW1vdmUg
Y29kZSBwYXRocyBmb3IKY2FzZSB3aGVuIGhzYi0+bmxzX2Rpc2sgd2FzIG5vdCBzZXQgYXMgdGhl
eSBhcmUgbm90IG5lZWRlZCBhbnltb3JlLgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBh
bGlAa2VybmVsLm9yZz4KLS0tCiBmcy9oZnMvc3VwZXIuYyB8IDMxICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKIGZzL2hmcy90cmFucy5jIHwgMzggKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMjQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvaGZzL3N1cGVyLmMgYi9mcy9oZnMvc3VwZXIu
YwppbmRleCA2NzY0YWZhOThhNmYuLmNlYTE5ZWQwNmJjZSAxMDA2NDQKLS0tIGEvZnMvaGZzL3N1
cGVyLmMKKysrIGIvZnMvaGZzL3N1cGVyLmMKQEAgLTM1MSw2ICszNTEsMzcgQEAgc3RhdGljIGlu
dCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBoZnNfc2JfaW5mbyAqaHNiKQog
CQl9CiAJfQogCisJaWYgKGhzYi0+bmxzX2lvICYmICFoc2ItPm5sc19kaXNrKSB7CisJCS8qCisJ
CSAqIFByZXZpb3VzIHZlcnNpb24gb2YgaGZzIGRyaXZlciBkaWQgc29tZXRoaW5nIHVuZXhwZWN0
ZWQ6CisJCSAqIFdoZW4gY29kZXBhZ2Ugd2FzIG5vdCBkZWZpbmVkIGJ1dCBpb2NoYXJzZXQgd2Fz
IHRoZW4KKwkJICogaGZzIGRyaXZlciBjb3BpZWQgOGJpdCBjaGFyYWN0ZXIgZnJvbSBkaXNrIGRp
cmVjdGx5IHRvCisJCSAqIDE2Yml0IHVuaWNvZGUgd2NoYXJfdCB0eXBlLiBXaGljaCBtZWFucyBp
dCBkaWQgY29udmVyc2lvbgorCQkgKiBmcm9tIExhdGluMSAoSVNPLTg4NTktMSkgdG8gVW5pY29k
ZSBiZWNhdXNlIGZpcnN0IDI1NgorCQkgKiBVbmljb2RlIGNvZGUgcG9pbnRzIG1hdGNoZXMgOGJp
dCBJU08tODg1OS0xIGNvZGVwYWdlIHRhYmxlLgorCQkgKiBTbyB3aGVuIGlvY2hhcnNldCB3YXMg
c3BlY2lmaWVkIGFuZCBjb2RlcGFnZSBub3QsIHRoZW4KKwkJICogY29kZXBhZ2UgdXNlZCBpbXBs
aWNpdCB2YWx1ZSAiaXNvODg1OS0xIi4KKwkJICoKKwkJICogVG8gbm90IGNoYW5nZSB0aGlzIHBy
ZXZpb3VzIGRlZmF1bHQgYmVoYXZpb3IgYXMgc29tZSB1c2VycworCQkgKiBtYXkgZGVwZW5kIG9u
IGl0LCB3ZSBsb2FkIGlzbzg4NTktMSBOTFMgdGFibGUgZXhwbGljaXRseQorCQkgKiB0byBzaW1w
bGlmeSBjb2RlIGFuZCBtYWtlIGl0IG1vcmUgcmVhYmxlIHdoYXQgaGFwcGVucy4KKwkJICoKKwkJ
ICogSW4gY29udGV4dCBvZiBoZnMgZHJpdmVyIGl0IGlzIHJlYWxseSBzdHJhbmdlIHRvIHVzZQor
CQkgKiBJU08tODg1OS0xIGNvZGVwYWdlIHRhYmxlIGZvciBzdG9yaW5nIGRhdGEgdG8gZGlzaywg
YnV0CisJCSAqIG5vdGhpbmcgZm9yYmlkcyBpdC4gSnVzdCBpdCBpcyBoaWdobHkgaW5jb21wYXRp
YmxlIHdpdGgKKwkJICogTWFjIE9TIHN5c3RlbXMuIFNvIHZpYSBwcl93YXJuKCkgaW5mb3JtIHVz
ZXIgdGhhdCB0aGlzCisJCSAqIGlzIG5vdCBwcm9iYWJseSB3aGF0IGhlIHdhbnRzLgorCQkgKi8K
KwkJcHJfd2FybigiaW9jaGFyc2V0IHdhcyBzcGVjaWZpZWQgYnV0IGNvZGVwYWdlIG5vdCwgIgor
CQkJInVzaW5nIGRlZmF1bHQgY29kZXBhZ2U9aXNvODg1OS0xXG4iKTsKKwkJcHJfd2FybigidGhp
cyBkZWZhdWx0IGNvZGVwYWdlPWlzbzg4NTktMSBpcyBpbmNvbXBhdGlibGUgd2l0aCAiCisJCQki
TWFjIE9TIHN5c3RlbXMgYW5kIG1heSBiZSBjaGFuZ2VkIGluIHRoZSBmdXR1cmUiKTsKKwkJaHNi
LT5ubHNfZGlzayA9IGxvYWRfbmxzKCJpc284ODU5LTEiKTsKKwkJaWYgKCFoc2ItPm5sc19kaXNr
KSB7CisJCQlwcl9lcnIoInVuYWJsZSB0byBsb2FkIGlzbzg4NTktMSBjb2RlcGFnZVxuIik7CisJ
CQlyZXR1cm4gMDsKKwkJfQorCX0KIAlpZiAoaHNiLT5ubHNfZGlzayAmJiAhaHNiLT5ubHNfaW8p
IHsKIAkJaHNiLT5ubHNfaW8gPSBsb2FkX25sc19kZWZhdWx0KCk7CiAJCWlmICghaHNiLT5ubHNf
aW8pIHsKZGlmZiAtLWdpdCBhL2ZzL2hmcy90cmFucy5jIGIvZnMvaGZzL3RyYW5zLmMKaW5kZXgg
ZmRiMGVkYjhhNjA3Li5kYmY1MzVkNTJkMzcgMTAwNjQ0Ci0tLSBhL2ZzL2hmcy90cmFucy5jCisr
KyBiL2ZzL2hmcy90cmFucy5jCkBAIC00OCwxOCArNDgsMTMgQEAgaW50IGhmc19tYWMyYXNjKHN0
cnVjdCBzdXBlcl9ibG9jayAqc2IsIGNoYXIgKm91dCwgY29uc3Qgc3RydWN0IGhmc19uYW1lICpp
bikKIAkJd2NoYXJfdCBjaDsKIAogCQl3aGlsZSAoc3JjbGVuID4gMCkgewotCQkJaWYgKG5sc19k
aXNrKSB7Ci0JCQkJc2l6ZSA9IG5sc19kaXNrLT5jaGFyMnVuaShzcmMsIHNyY2xlbiwgJmNoKTsK
LQkJCQlpZiAoc2l6ZSA8PSAwKSB7Ci0JCQkJCWNoID0gJz8nOwotCQkJCQlzaXplID0gMTsKLQkJ
CQl9Ci0JCQkJc3JjICs9IHNpemU7Ci0JCQkJc3JjbGVuIC09IHNpemU7Ci0JCQl9IGVsc2Ugewot
CQkJCWNoID0gKnNyYysrOwotCQkJCXNyY2xlbi0tOworCQkJc2l6ZSA9IG5sc19kaXNrLT5jaGFy
MnVuaShzcmMsIHNyY2xlbiwgJmNoKTsKKwkJCWlmIChzaXplIDw9IDApIHsKKwkJCQljaCA9ICc/
JzsKKwkJCQlzaXplID0gMTsKIAkJCX0KKwkJCXNyYyArPSBzaXplOworCQkJc3JjbGVuIC09IHNp
emU7CiAJCQlpZiAoY2ggPT0gJy8nKQogCQkJCWNoID0gJzonOwogCQkJc2l6ZSA9IG5sc19pby0+
dW5pMmNoYXIoY2gsIGRzdCwgZHN0bGVuKTsKQEAgLTExOSwyMCArMTE0LDE1IEBAIHZvaWQgaGZz
X2FzYzJtYWMoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgc3RydWN0IGhmc19uYW1lICpvdXQsIGNv
bnN0IHN0cnVjdCBxc3RyCiAJCQlzcmNsZW4gLT0gc2l6ZTsKIAkJCWlmIChjaCA9PSAnOicpCiAJ
CQkJY2ggPSAnLyc7Ci0JCQlpZiAobmxzX2Rpc2spIHsKLQkJCQlzaXplID0gbmxzX2Rpc2stPnVu
aTJjaGFyKGNoLCBkc3QsIGRzdGxlbik7Ci0JCQkJaWYgKHNpemUgPCAwKSB7Ci0JCQkJCWlmIChz
aXplID09IC1FTkFNRVRPT0xPTkcpCi0JCQkJCQlnb3RvIG91dDsKLQkJCQkJKmRzdCA9ICc/JzsK
LQkJCQkJc2l6ZSA9IDE7Ci0JCQkJfQotCQkJCWRzdCArPSBzaXplOwotCQkJCWRzdGxlbiAtPSBz
aXplOwotCQkJfSBlbHNlIHsKLQkJCQkqZHN0KysgPSBjaCA+IDB4ZmYgPyAnPycgOiBjaDsKLQkJ
CQlkc3RsZW4tLTsKKwkJCXNpemUgPSBubHNfZGlzay0+dW5pMmNoYXIoY2gsIGRzdCwgZHN0bGVu
KTsKKwkJCWlmIChzaXplIDwgMCkgeworCQkJCWlmIChzaXplID09IC1FTkFNRVRPT0xPTkcpCisJ
CQkJCWdvdG8gb3V0OworCQkJCSpkc3QgPSAnPyc7CisJCQkJc2l6ZSA9IDE7CiAJCQl9CisJCQlk
c3QgKz0gc2l6ZTsKKwkJCWRzdGxlbiAtPSBzaXplOwogCQl9CiAJfSBlbHNlIHsKIAkJY2hhciBj
aDsKLS0gCjIuMjAuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2pmcy1kaXNjdXNzaW9uCg==
