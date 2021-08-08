Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6783E4698
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Ji-0004dB-6l; Mon, 09 Aug 2021 13:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcK-0003PQ-Jq; Sun, 08 Aug 2021 16:25:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5wJ7V1CJNTy+RaqIjASFIJpUmleOVXa1Xu0YWcAexsk=; b=dXBgO8lDJIT6JLbYpfmRBm4I3z
 tbpXQO07cdd4Y6gfPbn300WzkRWPkzx07Myi7icFmM1KTBqgr7KIjZi1wiPZF5oZ7bj/9qzVBC2/O
 jkBbMrOosT7OQB5Vd55csK3mXwFhLFlhkHuHlxtGu/qc60H+b2STuNw0Gn9wMxNxgM0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5wJ7V1CJNTy+RaqIjASFIJpUmleOVXa1Xu0YWcAexsk=; b=dF/i/ut/0YySxQesgmFMH6bsba
 myuQ2oBJ8Hns7cnZrEWV2GngH30OwF1GO4tcmSOVy72xJC82K9CinzQrJcBAvUsBUkaJ0WK7sAKNV
 hUgCN2cTnrlYO7f+K5n5ai/RP84F6eB9SKZf8A1qAJawhFgqIlno/gkG9IVEB7Wp92To=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcH-0001wb-BA; Sun, 08 Aug 2021 16:25:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D43AA610A4;
 Sun,  8 Aug 2021 16:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439919;
 bh=GVWc9h9qXo3w6BuAifpFN5wphrKQHojXUzLj6VQLC7o=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Kkuf+n+awf758izx7pj105V2BfDs9zGD8qkRchL7e0TnqKjYoj46PxdNSNztJNd8u
 15nd+jHLdLfJwFNHHQmc03tUc7kepFgi9VDCzuEEQSoUeLE6xWTRLWyw2P4l8ceLzU
 9JaIOEiuf5kNnTIjqmmf1ry6/WGK8iWvh14YNJY0niYzmVxuCjsnYpUdp/svHZGl8G
 2knMpBO4O9s4ROCZmBEZm19rh64Y2YanXH2QlmwONdvAocMhWYhyxRe9B7kbUCHhHz
 NUk79n2rj8QVITDP2L4DN5rY8ZDGaw2aWPR1xbWLnVdkXJIIEIfCuRsSmSMsUe0/pP
 CYPq7YsVWz1ZA==
Received: by pali.im (Postfix)
 id 947131430; Sun,  8 Aug 2021 18:25:18 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:45 +0200
Message-Id: <20210808162453.1653-13-pali@kernel.org>
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mClcH-0001wb-BA
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:40 +0000
Subject: [Jfs-discussion] [RFC PATCH 12/20] hfs: Do not use broken utf8 NLS
 table for iocharset=utf8 mount option
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
IC0tZ2l0IGEvZnMvaGZzL3N1cGVyLmMgYi9mcy9oZnMvc3VwZXIuYwppbmRleCA4NmJjNDY3NDZj
N2YuLjA3NjMwOGRmNDFjZiAxMDA2NDQKLS0tIGEvZnMvaGZzL3N1cGVyLmMKKysrIGIvZnMvaGZz
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
KwlpbnQgaGF2ZV9pb2NoYXJzZXQ7CiAKIAkvKiBpbml0aWFsaXplIHRoZSBzYiB3aXRoIGRlZmF1
bHRzICovCiAJaHNiLT5zX3VpZCA9IGN1cnJlbnRfdWlkKCk7CkBAIC0yMzksNiArMjQzLDggQEAg
c3RhdGljIGludCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBoZnNfc2JfaW5m
byAqaHNiKQogCWlmICghb3B0aW9ucykKIAkJcmV0dXJuIDE7CiAKKwloYXZlX2lvY2hhcnNldCA9
IDA7CisKIAl3aGlsZSAoKHAgPSBzdHJzZXAoJm9wdGlvbnMsICIsIikpICE9IE5VTEwpIHsKIAkJ
aWYgKCEqcCkKIAkJCWNvbnRpbnVlOwpAQCAtMzMyLDE4ICszMzgsMjIgQEAgc3RhdGljIGludCBw
YXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBoZnNfc2JfaW5mbyAqaHNiKQogCQkJ
a2ZyZWUocCk7CiAJCQlicmVhazsKIAkJY2FzZSBvcHRfaW9jaGFyc2V0OgotCQkJaWYgKGhzYi0+
bmxzX2lvKSB7CisJCQlpZiAoaGF2ZV9pb2NoYXJzZXQpIHsKIAkJCQlwcl9lcnIoInVuYWJsZSB0
byBjaGFuZ2UgaW9jaGFyc2V0XG4iKTsKIAkJCQlyZXR1cm4gMDsKIAkJCX0KIAkJCXAgPSBtYXRj
aF9zdHJkdXAoJmFyZ3NbMF0pOwotCQkJaWYgKHApCi0JCQkJaHNiLT5ubHNfaW8gPSBsb2FkX25s
cyhwKTsKLQkJCWlmICghaHNiLT5ubHNfaW8pIHsKLQkJCQlwcl9lcnIoInVuYWJsZSB0byBsb2Fk
IGlvY2hhcnNldCBcIiVzXCJcbiIsIHApOwotCQkJCWtmcmVlKHApOworCQkJaWYgKCFwKQogCQkJ
CXJldHVybiAwOworCQkJaWYgKHN0cmNtcChwLCAidXRmOCIpICE9IDApIHsKKwkJCQloc2ItPm5s
c19pbyA9IGxvYWRfbmxzKHApOworCQkJCWlmICghaHNiLT5ubHNfaW8pIHsKKwkJCQkJcHJfZXJy
KCJ1bmFibGUgdG8gbG9hZCBpb2NoYXJzZXQgXCIlc1wiXG4iLCBwKTsKKwkJCQkJa2ZyZWUocCk7
CisJCQkJCXJldHVybiAwOworCQkJCX0KIAkJCX0KKwkJCWhhdmVfaW9jaGFyc2V0ID0gMTsKIAkJ
CWtmcmVlKHApOwogCQkJYnJlYWs7CiAJCWRlZmF1bHQ6CkBAIC0zNTEsNyArMzYxLDcgQEAgc3Rh
dGljIGludCBwYXJzZV9vcHRpb25zKGNoYXIgKm9wdGlvbnMsIHN0cnVjdCBoZnNfc2JfaW5mbyAq
aHNiKQogCQl9CiAJfQogCi0JaWYgKGhzYi0+bmxzX2lvICYmICFoc2ItPm5sc19kaXNrKSB7CisJ
aWYgKGhhdmVfaW9jaGFyc2V0ICYmICFoc2ItPm5sc19kaXNrKSB7CiAJCS8qCiAJCSAqIFByZXZp
b3VzIHZlcnNpb24gb2YgaGZzIGRyaXZlciBkaWQgc29tZXRoaW5nIHVuZXhwZWN0ZWQ6CiAJCSAq
IFdoZW4gY29kZXBhZ2Ugd2FzIG5vdCBkZWZpbmVkIGJ1dCBpb2NoYXJzZXQgd2FzIHRoZW4KQEAg
LTM4Miw3ICszOTIsOCBAQCBzdGF0aWMgaW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywg
c3RydWN0IGhmc19zYl9pbmZvICpoc2IpCiAJCQlyZXR1cm4gMDsKIAkJfQogCX0KLQlpZiAoaHNi
LT5ubHNfZGlzayAmJiAhaHNiLT5ubHNfaW8pIHsKKwlpZiAoaHNiLT5ubHNfZGlzayAmJgorCSAg
ICAhaGF2ZV9pb2NoYXJzZXQgJiYgc3RyY21wKENPTkZJR19OTFNfREVGQVVMVCwgInV0ZjgiKSAh
PSAwKSB7CiAJCWhzYi0+bmxzX2lvID0gbG9hZF9ubHNfZGVmYXVsdCgpOwogCQlpZiAoIWhzYi0+
bmxzX2lvKSB7CiAJCQlwcl9lcnIoInVuYWJsZSB0byBsb2FkIGRlZmF1bHQgaW9jaGFyc2V0XG4i
KTsKZGlmZiAtLWdpdCBhL2ZzL2hmcy90cmFucy5jIGIvZnMvaGZzL3RyYW5zLmMKaW5kZXggYzc1
NjgyYzYxYjA2Li5iZmY4ZTU0MDAzYWIgMTAwNjQ0Ci0tLSBhL2ZzL2hmcy90cmFucy5jCisrKyBi
L2ZzL2hmcy90cmFucy5jCkBAIC00NCw3ICs0NCw3IEBAIGludCBoZnNfbWFjMmFzYyhzdHJ1Y3Qg
c3VwZXJfYmxvY2sgKnNiLCBjaGFyICpvdXQsIGNvbnN0IHN0cnVjdCBoZnNfbmFtZSAqaW4pCiAJ
CXNyY2xlbiA9IEhGU19OQU1FTEVOOwogCWRzdCA9IG91dDsKIAlkc3RsZW4gPSBIRlNfTUFYX05B
TUVMRU47Ci0JaWYgKG5sc19pbykgeworCWlmIChubHNfZGlzaykgewogCQl3Y2hhcl90IGNoOwog
CiAJCXdoaWxlIChzcmNsZW4gPiAwKSB7CkBAIC01Nyw3ICs1NywxMiBAQCBpbnQgaGZzX21hYzJh
c2Moc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgY2hhciAqb3V0LCBjb25zdCBzdHJ1Y3QgaGZzX25h
bWUgKmluKQogCQkJc3JjbGVuIC09IHNpemU7CiAJCQlpZiAoY2ggPT0gJy8nKQogCQkJCWNoID0g
JzonOwotCQkJc2l6ZSA9IG5sc19pby0+dW5pMmNoYXIoY2gsIGRzdCwgZHN0bGVuKTsKKwkJCWlm
IChubHNfaW8pCisJCQkJc2l6ZSA9IG5sc19pby0+dW5pMmNoYXIoY2gsIGRzdCwgZHN0bGVuKTsK
KwkJCWVsc2UgaWYgKGRzdGxlbiA+IDApCisJCQkJc2l6ZSA9IHV0ZjMyX3RvX3V0ZjgoY2gsIGRz
dCwgZHN0bGVuKTsKKwkJCWVsc2UKKwkJCQlzaXplID0gLUVOQU1FVE9PTE9ORzsKIAkJCWlmIChz
aXplIDwgMCkgewogCQkJCWlmIChzaXplID09IC1FTkFNRVRPT0xPTkcpCiAJCQkJCWdvdG8gb3V0
OwpAQCAtMTAxLDExICsxMDYsMjIgQEAgdm9pZCBoZnNfYXNjMm1hYyhzdHJ1Y3Qgc3VwZXJfYmxv
Y2sgKnNiLCBzdHJ1Y3QgaGZzX25hbWUgKm91dCwgY29uc3Qgc3RydWN0IHFzdHIKIAlzcmNsZW4g
PSBpbi0+bGVuOwogCWRzdCA9IG91dC0+bmFtZTsKIAlkc3RsZW4gPSBIRlNfTkFNRUxFTjsKLQlp
ZiAobmxzX2lvKSB7CisJaWYgKG5sc19kaXNrKSB7CiAJCXdjaGFyX3QgY2g7CisJCXVuaWNvZGVf
dCB1OwogCiAJCXdoaWxlIChzcmNsZW4gPiAwKSB7Ci0JCQlzaXplID0gbmxzX2lvLT5jaGFyMnVu
aShzcmMsIHNyY2xlbiwgJmNoKTsKKwkJCWlmIChubHNfaW8pCisJCQkJc2l6ZSA9IG5sc19pby0+
Y2hhcjJ1bmkoc3JjLCBzcmNsZW4sICZjaCk7CisJCQllbHNlIHsKKwkJCQlzaXplID0gdXRmOF90
b191dGYzMihzdHIsIHN0cmxlbiwgJnUpOworCQkJCWlmIChzaXplID49IDApIHsKKwkJCQkJaWYg
KHUgPD0gTUFYX1dDSEFSX1QpCisJCQkJCQljaCA9IHU7CisJCQkJCWVsc2UKKwkJCQkJCXNpemUg
PSAtRUlOVkFMOworCQkJCX0KKwkJCX0KIAkJCWlmIChzaXplIDwgMCkgewogCQkJCWNoID0gJz8n
OwogCQkJCXNpemUgPSAxOwotLSAKMi4yMC4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlz
Y3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
