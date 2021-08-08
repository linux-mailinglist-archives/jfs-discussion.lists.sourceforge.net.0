Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E293E468E
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Ji-0004dK-AX; Mon, 09 Aug 2021 13:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcK-0003PP-Jq; Sun, 08 Aug 2021 16:25:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YQZ2rMIMQxwuxdeGNnos6ol4JWYOmA/QUgcyNBbaP18=; b=eeE1FpHJITzvC7HO3hWpwLOu/I
 Z6jp6rDry6Oc/ZAGmEXJnqVE2TCsAT1naULCUuF2tzr8nYfTl7arq5N49P8o/sf5/SkDd5KNrTi9P
 DAoObvuryczkj1y/G+nn/Q/e2Uwr5Im9ykXzs2AG4AGCoDrmIu7uvao9JnyslCbH1E9E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YQZ2rMIMQxwuxdeGNnos6ol4JWYOmA/QUgcyNBbaP18=; b=fMPL8sCPEpdeeXeCrBcVRZX6RN
 KJG6PWRZPi4MOQkJu1F9C3VBbWEUmoy9Yg/S9lLY0XNhn00WxFV8dnja1mRt+n8DpnqEvpAsu0dCx
 zdK7ZHeQeI1pcW60lWFv6pTjdHZCAfrQwjBmmPzA78qaMpXFssuw1Z4JFFp+vAipE4kA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcD-0001wM-1N; Sun, 08 Aug 2021 16:25:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D1FFB61052;
 Sun,  8 Aug 2021 16:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439916;
 bh=+BmbX/XSW9xusxJkV3hvcje6ty+QECDqHCCE2dTid9g=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=hBdFVWmtoKW3qDy2YkI9Ozq0aWiA3A87LOogadid5XAQYnY8SrfIKnotRBuBd8Hc4
 +24CsQGAkCHx5OJ+NTfW33EfO1RKDluyXMTyMBUDwYmMixXKZ/LWjXAt6WKwrPdqtl
 U7e8VzA0yI996uediTk0zfO2tWE8/65yCc4mG+599Bi93qR7Ny6DLjod4sTx0Blsns
 Q7C8WcR2GrUyn7ZOTk4L/n0TIwLaAmtVHB0L1MCLIlea5cZJDS3mXhDfCpHuL8Ej1B
 0VmSjoXWV6hCUn7BpLVby8yBy12uymklqQKnGSHqzybXYIEJAAsb+nGNcaidW7fo+W
 +Xf94xi6iJjcw==
Received: by pali.im (Postfix)
 id 0C96115AC; Sun,  8 Aug 2021 18:25:14 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:36 +0200
Message-Id: <20210808162453.1653-4-pali@kernel.org>
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
X-Headers-End: 1mClcD-0001wM-1N
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:41 +0000
Subject: [Jfs-discussion] [RFC PATCH 03/20] udf: Fix iocharset=utf8 mount
 option
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
dGhlbiBzX25sc19tYXAgaXMgc2V0IHRvIE5VTEwuIFNvIHNpbXBsaWZ5CmNvZGUgYXJvdW5kLCBy
ZW1vdmUgVURGX0ZMQUdfTkxTX01BUCBhbmQgVURGX0ZMQUdfVVRGOCBmbGFncyBhcyB0bwpkaXN0
aW5ndWlzaCBiZXR3ZWVuIFVURi04IGFuZCBub24tVVRGLTggaXQgaXMgbmVlZGVkIGp1c3QgdG8g
Y2hlY2sgaWYKc19ubHNfbWFwIHNldCB0byBOVUxMIG9yIG5vdC4KClNpZ25lZC1vZmYtYnk6IFBh
bGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogZnMvdWRmL3N1cGVyLmMgICB8IDUwICsr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZnMvdWRmL3Vk
Zl9zYi5oICB8ICAyIC0tCiBmcy91ZGYvdW5pY29kZS5jIHwgIDQgKystLQogMyBmaWxlcyBjaGFu
Z2VkLCAyMSBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy91
ZGYvc3VwZXIuYyBiL2ZzL3VkZi9zdXBlci5jCmluZGV4IDJmODNjMTIwNGUyMC4uNmU4YzI5MTA3
YjA0IDEwMDY0NAotLS0gYS9mcy91ZGYvc3VwZXIuYworKysgYi9mcy91ZGYvc3VwZXIuYwpAQCAt
MzQ5LDEwICszNDksMTAgQEAgc3RhdGljIGludCB1ZGZfc2hvd19vcHRpb25zKHN0cnVjdCBzZXFf
ZmlsZSAqc2VxLCBzdHJ1Y3QgZGVudHJ5ICpyb290KQogCQlzZXFfcHJpbnRmKHNlcSwgIixsYXN0
YmxvY2s9JXUiLCBzYmktPnNfbGFzdF9ibG9jayk7CiAJaWYgKHNiaS0+c19hbmNob3IgIT0gMCkK
IAkJc2VxX3ByaW50ZihzZXEsICIsYW5jaG9yPSV1Iiwgc2JpLT5zX2FuY2hvcik7Ci0JaWYgKFVE
Rl9RVUVSWV9GTEFHKHNiLCBVREZfRkxBR19VVEY4KSkKLQkJc2VxX3B1dHMoc2VxLCAiLHV0Zjgi
KTsKLQlpZiAoVURGX1FVRVJZX0ZMQUcoc2IsIFVERl9GTEFHX05MU19NQVApICYmIHNiaS0+c19u
bHNfbWFwKQorCWlmIChzYmktPnNfbmxzX21hcCkKIAkJc2VxX3ByaW50ZihzZXEsICIsaW9jaGFy
c2V0PSVzIiwgc2JpLT5zX25sc19tYXAtPmNoYXJzZXQpOworCWVsc2UKKwkJc2VxX3B1dHMoc2Vx
LCAiLGlvY2hhcnNldD11dGY4Iik7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTU1OCwxOSArNTU4LDI0
IEBAIHN0YXRpYyBpbnQgdWRmX3BhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IHVk
Zl9vcHRpb25zICp1b3B0LAogCQkJLyogSWdub3JlZCAobmV2ZXIgaW1wbGVtZW50ZWQgcHJvcGVy
bHkpICovCiAJCQlicmVhazsKIAkJY2FzZSBPcHRfdXRmODoKLQkJCXVvcHQtPmZsYWdzIHw9ICgx
IDw8IFVERl9GTEFHX1VURjgpOworCQkJaWYgKCFyZW1vdW50KSB7CisJCQkJdW5sb2FkX25scyh1
b3B0LT5ubHNfbWFwKTsKKwkJCQl1b3B0LT5ubHNfbWFwID0gTlVMTDsKKwkJCX0KIAkJCWJyZWFr
OwogCQljYXNlIE9wdF9pb2NoYXJzZXQ6CiAJCQlpZiAoIXJlbW91bnQpIHsKLQkJCQlpZiAodW9w
dC0+bmxzX21hcCkKLQkJCQkJdW5sb2FkX25scyh1b3B0LT5ubHNfbWFwKTsKLQkJCQkvKgotCQkJ
CSAqIGxvYWRfbmxzKCkgZmFpbHVyZSBpcyBoYW5kbGVkIGxhdGVyIGluCi0JCQkJICogdWRmX2Zp
bGxfc3VwZXIoKSBhZnRlciBhbGwgb3B0aW9ucyBhcmUKLQkJCQkgKiBwYXJzZWQuCi0JCQkJICov
CisJCQkJdW5sb2FkX25scyh1b3B0LT5ubHNfbWFwKTsKKwkJCQl1b3B0LT5ubHNfbWFwID0gTlVM
TDsKKwkJCX0KKwkJCS8qIFdoZW4gbmxzX21hcCBpcyBub3QgbG9hZGVkIHRoZW4gVVRGLTggaXMg
dXNlZCAqLworCQkJaWYgKCFyZW1vdW50ICYmIHN0cmNtcChhcmdzWzBdLmZyb20sICJ1dGY4Iikg
IT0gMCkgewogCQkJCXVvcHQtPm5sc19tYXAgPSBsb2FkX25scyhhcmdzWzBdLmZyb20pOwotCQkJ
CXVvcHQtPmZsYWdzIHw9ICgxIDw8IFVERl9GTEFHX05MU19NQVApOworCQkJCWlmICghdW9wdC0+
bmxzX21hcCkgeworCQkJCQlwcl9lcnIoImlvY2hhcnNldCAlcyBub3QgZm91bmRcbiIsCisJCQkJ
CQlhcmdzWzBdLmZyb20pOworCQkJCQlyZXR1cm4gMDsKKwkJCQl9CiAJCQl9CiAJCQlicmVhazsK
IAkJY2FzZSBPcHRfdWZvcmdldDoKQEAgLTIxMzksMjEgKzIxNDQsNiBAQCBzdGF0aWMgaW50IHVk
Zl9maWxsX3N1cGVyKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIHZvaWQgKm9wdGlvbnMsIGludCBz
aWxlbnQpCiAJaWYgKCF1ZGZfcGFyc2Vfb3B0aW9ucygoY2hhciAqKW9wdGlvbnMsICZ1b3B0LCBm
YWxzZSkpCiAJCWdvdG8gcGFyc2Vfb3B0aW9uc19mYWlsdXJlOwogCi0JaWYgKHVvcHQuZmxhZ3Mg
JiAoMSA8PCBVREZfRkxBR19VVEY4KSAmJgotCSAgICB1b3B0LmZsYWdzICYgKDEgPDwgVURGX0ZM
QUdfTkxTX01BUCkpIHsKLQkJdWRmX2VycihzYiwgInV0ZjggY2Fubm90IGJlIGNvbWJpbmVkIHdp
dGggaW9jaGFyc2V0XG4iKTsKLQkJZ290byBwYXJzZV9vcHRpb25zX2ZhaWx1cmU7Ci0JfQotCWlm
ICgodW9wdC5mbGFncyAmICgxIDw8IFVERl9GTEFHX05MU19NQVApKSAmJiAhdW9wdC5ubHNfbWFw
KSB7Ci0JCXVvcHQubmxzX21hcCA9IGxvYWRfbmxzX2RlZmF1bHQoKTsKLQkJaWYgKCF1b3B0Lm5s
c19tYXApCi0JCQl1b3B0LmZsYWdzICY9IH4oMSA8PCBVREZfRkxBR19OTFNfTUFQKTsKLQkJZWxz
ZQotCQkJdWRmX2RlYnVnKCJVc2luZyBkZWZhdWx0IE5MUyBtYXBcbiIpOwotCX0KLQlpZiAoISh1
b3B0LmZsYWdzICYgKDEgPDwgVURGX0ZMQUdfTkxTX01BUCkpKQotCQl1b3B0LmZsYWdzIHw9ICgx
IDw8IFVERl9GTEFHX1VURjgpOwotCiAJZmlsZXNldC5sb2dpY2FsQmxvY2tOdW0gPSAweEZGRkZG
RkZGOwogCWZpbGVzZXQucGFydGl0aW9uUmVmZXJlbmNlTnVtID0gMHhGRkZGOwogCkBAIC0yMzA4
LDggKzIyOTgsNyBAQCBzdGF0aWMgaW50IHVkZl9maWxsX3N1cGVyKHN0cnVjdCBzdXBlcl9ibG9j
ayAqc2IsIHZvaWQgKm9wdGlvbnMsIGludCBzaWxlbnQpCiBlcnJvcl9vdXQ6CiAJaXB1dChzYmkt
PnNfdmF0X2lub2RlKTsKIHBhcnNlX29wdGlvbnNfZmFpbHVyZToKLQlpZiAodW9wdC5ubHNfbWFw
KQotCQl1bmxvYWRfbmxzKHVvcHQubmxzX21hcCk7CisJdW5sb2FkX25scyh1b3B0Lm5sc19tYXAp
OwogCWlmIChsdmlkX29wZW4pCiAJCXVkZl9jbG9zZV9sdmlkKHNiKTsKIAlicmVsc2Uoc2JpLT5z
X2x2aWRfYmgpOwpAQCAtMjM1OSw4ICsyMzQ4LDcgQEAgc3RhdGljIHZvaWQgdWRmX3B1dF9zdXBl
cihzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiKQogCXNiaSA9IFVERl9TQihzYik7CiAKIAlpcHV0KHNi
aS0+c192YXRfaW5vZGUpOwotCWlmIChVREZfUVVFUllfRkxBRyhzYiwgVURGX0ZMQUdfTkxTX01B
UCkpCi0JCXVubG9hZF9ubHMoc2JpLT5zX25sc19tYXApOworCXVubG9hZF9ubHMoc2JpLT5zX25s
c19tYXApOwogCWlmICghc2JfcmRvbmx5KHNiKSkKIAkJdWRmX2Nsb3NlX2x2aWQoc2IpOwogCWJy
ZWxzZShzYmktPnNfbHZpZF9iaCk7CmRpZmYgLS1naXQgYS9mcy91ZGYvdWRmX3NiLmggYi9mcy91
ZGYvdWRmX3NiLmgKaW5kZXggNzU4ZWZlNTU3YTE5Li40ZmE2MjA1NDNkMzAgMTAwNjQ0Ci0tLSBh
L2ZzL3VkZi91ZGZfc2IuaAorKysgYi9mcy91ZGYvdWRmX3NiLmgKQEAgLTIwLDggKzIwLDYgQEAK
ICNkZWZpbmUgVURGX0ZMQUdfVU5ERUxFVEUJCTYKICNkZWZpbmUgVURGX0ZMQUdfVU5ISURFCQkJ
NwogI2RlZmluZSBVREZfRkxBR19WQVJDT05WCQk4Ci0jZGVmaW5lIFVERl9GTEFHX05MU19NQVAJ
CTkKLSNkZWZpbmUgVURGX0ZMQUdfVVRGOAkJCTEwCiAjZGVmaW5lIFVERl9GTEFHX1VJRF9GT1JH
RVQgICAgIDExICAgIC8qIHNhdmUgLTEgZm9yIHVpZCB0byBkaXNrICovCiAjZGVmaW5lIFVERl9G
TEFHX0dJRF9GT1JHRVQgICAgIDEyCiAjZGVmaW5lIFVERl9GTEFHX1VJRF9TRVQJMTMKZGlmZiAt
LWdpdCBhL2ZzL3VkZi91bmljb2RlLmMgYi9mcy91ZGYvdW5pY29kZS5jCmluZGV4IDVmY2ZhOTY0
NjNlYi4uNjIyNTY5MDA3YjUzIDEwMDY0NAotLS0gYS9mcy91ZGYvdW5pY29kZS5jCisrKyBiL2Zz
L3VkZi91bmljb2RlLmMKQEAgLTE3Nyw3ICsxNzcsNyBAQCBzdGF0aWMgaW50IHVkZl9uYW1lX2Zy
b21fQ1MwKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsCiAJCXJldHVybiAwOwogCX0KIAotCWlmIChV
REZfUVVFUllfRkxBRyhzYiwgVURGX0ZMQUdfTkxTX01BUCkpCisJaWYgKFVERl9TQihzYiktPnNf
bmxzX21hcCkKIAkJY29udl9mID0gVURGX1NCKHNiKS0+c19ubHNfbWFwLT51bmkyY2hhcjsKIAll
bHNlCiAJCWNvbnZfZiA9IE5VTEw7CkBAIC0yODUsNyArMjg1LDcgQEAgc3RhdGljIGludCB1ZGZf
bmFtZV90b19DUzAoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwKIAlpZiAob2N1X21heF9sZW4gPD0g
MCkKIAkJcmV0dXJuIDA7CiAKLQlpZiAoVURGX1FVRVJZX0ZMQUcoc2IsIFVERl9GTEFHX05MU19N
QVApKQorCWlmIChVREZfU0Ioc2IpLT5zX25sc19tYXApCiAJCWNvbnZfZiA9IFVERl9TQihzYikt
PnNfbmxzX21hcC0+Y2hhcjJ1bmk7CiAJZWxzZQogCQljb252X2YgPSBOVUxMOwotLSAKMi4yMC4x
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
