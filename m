Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6AB3E468D
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jh-0004cb-OL; Mon, 09 Aug 2021 13:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcJ-0008Gg-5P; Sun, 08 Aug 2021 16:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/ovigjHofSNQKm8k02AsmgY2nJfUQ67NJOXObmeXk6w=; b=e2Q3sCNhf+fdHcgJKm1+d4PD6i
 2pP5t4vtvZfeNLL6Y4hRAwzDVXNuEhBo+rTqDTCYbRDaPXJIFAQ2mdfPvtXjF6cv5InVxXsZMl+5R
 FsVf4lxp82Nw4jqPS1YpEbt5H/dsHnBGAOEt1zpbshPdBMJcQ019QqxZ9/hhQcqfqCqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/ovigjHofSNQKm8k02AsmgY2nJfUQ67NJOXObmeXk6w=; b=TppMPvikAHYgFsoZPN8mrajHL4
 u3x7OSwGyp+vFuOIvdsHThe0UZEu1EzcvRYVu5HL67WUsoeRJAcj2i5DStr81dCoUuC8qWMjR0Dho
 b1Aqw4AbShkEQufHOgVnpc0Kk2kUMl8l+ZRX5vBceJRXEXm7wyxxYo3z8xMopIWItllo=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcH-00GyXq-AR; Sun, 08 Aug 2021 16:25:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4E7826103B;
 Sun,  8 Aug 2021 16:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439918;
 bh=Y0Q6rt+tDWZMBi0N4PwxXpAY8aZOyLa7NpaJo/VUL6k=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Dvu/AnbAZPEBaBQPuIZJm8QvDcGhRBm08stqQ3DK71DNbQpFCFI7FwsrM2Eyo9xZZ
 j2lP4/wkv2OB6oYYR1OJ3+BfxNwQBt0tw4umUTB4NXXrekUqFgDqVx/vWKZVTExkB/
 rpUSKnx3NBChV1HNldnKnFY+0YYUPeWwlSJOH+GwQgiRjeFBA+zqDxVZoGjD8O5kh3
 HUU5nuvDle+bkxTt2ZJRYOkDcD0KQKr6eY5NF7N6vZdZ0gZOFJvNAhrKLlEmrXMqGD
 oOKj7wYpSMJZ+dqhTq3aNoePBFFfVjZJRPdM35CrNTCq5nNlKkUx7ZOQXciYfgUbQW
 Xe9HAz3pDKlcw==
Received: by pali.im (Postfix)
 id 0FB2B13DC; Sun,  8 Aug 2021 18:25:18 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:44 +0200
Message-Id: <20210808162453.1653-12-pali@kernel.org>
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
X-Headers-End: 1mClcH-00GyXq-AR
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:40 +0000
Subject: [Jfs-discussion] [RFC PATCH 11/20] hfs: Explicitly set
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
YwppbmRleCAxMmQ5YmFlMzkzNjMuLjg2YmM0Njc0NmM3ZiAxMDA2NDQKLS0tIGEvZnMvaGZzL3N1
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
MzlmNWUzNDNiZjRkLi5jNzU2ODJjNjFiMDYgMTAwNjQ0Ci0tLSBhL2ZzL2hmcy90cmFucy5jCisr
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
