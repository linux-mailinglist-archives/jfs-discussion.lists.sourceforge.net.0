Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F61656328
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oNB-0003AB-00;
	Mon, 26 Dec 2022 14:22:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMx-00037S-7v;
 Mon, 26 Dec 2022 14:22:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2tVQnL+/ABsvxQwaGLH03NlHqKtaC0ctIFrv3JllskU=; b=lBSGr/YbnhDOf2g6onhsfcckQa
 f7XSc+HD6JJ8hWCAF8mqGrOkZuM3SIFsBxlued/CsPLwX3Wda9xBgWYhTLoPImdktvjHAOo/mUJfm
 p8jwI4lIJCXsHGXKkcqtm2/Wzf/i3BGItmCMEV/bQ1STnzKXwIQMVYEKq+3jxmdOV57U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2tVQnL+/ABsvxQwaGLH03NlHqKtaC0ctIFrv3JllskU=; b=CPeB8wwGNs5gfLv0XNlmQH8Duj
 hSKJsTkIuPdSEPtz9Dxgdu51EzFV4Oohd13XZfXGSDdiqsSuj+bALZLgtKQhWQf5Chu9vYiIs60Ed
 0g84gZJxMHKKO0xTuyI5fqmWrBVKnpDiKAFBJ3vV2V5Jb8+4pGgoH7k00s/1oPkr5mzg=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMw-00DHho-1P; Mon, 26 Dec 2022 14:22:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BD942B80D44;
 Mon, 26 Dec 2022 14:22:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23E69C433D2;
 Mon, 26 Dec 2022 14:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064534;
 bh=MTbJQXmNYIn3aIarKGddxE1E8WlMgp5B50dVxH4DJ4Y=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=nAKwOBNQge72LJf3BR6bK0gFclV7iB2LTO/ZPBjQ6PXtoHYu8uiBLepZmf33P9IOj
 4LntY2IUWK6Q7NqH0RyXZI42XK5PqaaOsRnbg9Y0LPZlF222iMalDK3PsW4xLDl//j
 7sS4MCexxoHY65fiXFNmzotdf1+VOIxwMVqUZkPQejJ7eh5QTq7yTWnFUA8Tg8iELD
 mhFR5xRn9KgjQup7u8tT6jm1yAJStxUKJDw14cMRemu+pPVg2/WgXaWLEFiZ1rLzHE
 3Jy4UtensntSs+1cPmpSVS3b0wtZ3f0o5aT8X/m4GnFcHQym06PJ/5C0QLmoU1RYOW
 5hKB5J97xCu9g==
Received: by pali.im (Postfix)
 id D1E989D7; Mon, 26 Dec 2022 15:22:13 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:44 +0100
Message-Id: <20221226142150.13324-13-pali@kernel.org>
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
 Content preview: When iocharset= mount option is not specified or when is set
 to iocharset=none then jfs driver uses its own custom iso8895-1 encoding
 implementation. NLS already provides iso8895-1 module, so use it instead of
 custom jfs iso8859-1 implementation. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
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
X-Headers-End: 1p9oMw-00DHho-1P
Subject: [Jfs-discussion] [RFC PATCH v2 12/18] jfs: Remove custom iso8859-1
 implementation
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

V2hlbiBpb2NoYXJzZXQ9IG1vdW50IG9wdGlvbiBpcyBub3Qgc3BlY2lmaWVkIG9yIHdoZW4gaXMg
c2V0IHRvCmlvY2hhcnNldD1ub25lIHRoZW4gamZzIGRyaXZlciB1c2VzIGl0cyBvd24gY3VzdG9t
IGlzbzg4OTUtMSBlbmNvZGluZwppbXBsZW1lbnRhdGlvbi4KCk5MUyBhbHJlYWR5IHByb3ZpZGVz
IGlzbzg4OTUtMSBtb2R1bGUsIHNvIHVzZSBpdCBpbnN0ZWFkIG9mIGN1c3RvbSBqZnMKaXNvODg1
OS0xIGltcGxlbWVudGF0aW9uLgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2Vy
bmVsLm9yZz4KLS0tCiBmcy9qZnMvamZzX3VuaWNvZGUuYyB8IDE0ICstLS0tLS0tLS0tLS0tCiBm
cy9qZnMvc3VwZXIuYyAgICAgICB8IDI5ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2ZzL2pmcy9qZnNfdW5pY29kZS5jIGIvZnMvamZzL2pmc191bmljb2RlLmMKaW5kZXgg
MGMxZTkwMjcyNDVhLi4xZDBmNjVkMTNiNTggMTAwNjQ0Ci0tLSBhL2ZzL2pmcy9qZnNfdW5pY29k
ZS5jCisrKyBiL2ZzL2pmcy9qZnNfdW5pY29kZS5jCkBAIC0zMywxMyArMzMsOCBAQCBpbnQgamZz
X3N0cmZyb21VQ1NfbGUoY2hhciAqdG8sIGNvbnN0IF9fbGUxNiAqIGZyb20sCiAJCQkJCSAgICAg
ICBOTFNfTUFYX0NIQVJTRVRfU0laRSk7CiAJCQlpZiAoY2hhcmxlbiA+IDApCiAJCQkJb3V0bGVu
ICs9IGNoYXJsZW47Ci0JCQllbHNlCisJCQllbHNlIHsKIAkJCQl0b1tvdXRsZW4rK10gPSAnPyc7
Ci0JCX0KLQl9IGVsc2UgewotCQlmb3IgKGkgPSAwOyAoaSA8IGxlbikgJiYgZnJvbVtpXTsgaSsr
KSB7Ci0JCQlpZiAodW5saWtlbHkobGUxNl90b19jcHUoZnJvbVtpXSkgJiAweGZmMDApKSB7Ci0J
CQkJdG9baV0gPSAnPyc7CiAJCQkJaWYgKHVubGlrZWx5KHdhcm4pKSB7CiAJCQkJCXdhcm4tLTsK
IAkJCQkJd2Fybl9hZ2Fpbi0tOwpAQCAtNDksMTIgKzQ0LDggQEAgaW50IGpmc19zdHJmcm9tVUNT
X2xlKGNoYXIgKnRvLCBjb25zdCBfX2xlMTYgKiBmcm9tLAogCQkJCQlwcmludGsoS0VSTl9FUlIK
IAkJCQkibW91bnQgd2l0aCBpb2NoYXJzZXQ9dXRmOCB0byBhY2Nlc3NcbiIpOwogCQkJCX0KLQog
CQkJfQotCQkJZWxzZQotCQkJCXRvW2ldID0gKGNoYXIpIChsZTE2X3RvX2NwdShmcm9tW2ldKSk7
CiAJCX0KLQkJb3V0bGVuID0gaTsKIAl9CiAJdG9bb3V0bGVuXSA9IDA7CiAJcmV0dXJuIG91dGxl
bjsKQEAgLTg0LDkgKzc1LDYgQEAgc3RhdGljIGludCBqZnNfc3RydG9VQ1Mod2NoYXJfdCAqIHRv
LCBjb25zdCB1bnNpZ25lZCBjaGFyICpmcm9tLCBpbnQgbGVuLAogCQkJCXJldHVybiBjaGFybGVu
OwogCQkJfQogCQl9Ci0JfSBlbHNlIHsKLQkJZm9yIChpID0gMDsgKGkgPCBsZW4pICYmIGZyb21b
aV07IGkrKykKLQkJCXRvW2ldID0gKHdjaGFyX3QpIGZyb21baV07CiAJfQogCiAJdG9baV0gPSAw
OwpkaWZmIC0tZ2l0IGEvZnMvamZzL3N1cGVyLmMgYi9mcy9qZnMvc3VwZXIuYwppbmRleCBkMmY4
MmNiN2RiMWIuLmEyYmIzZDVkM2Y2OSAxMDA2NDQKLS0tIGEvZnMvamZzL3N1cGVyLmMKKysrIGIv
ZnMvamZzL3N1cGVyLmMKQEAgLTIzMSw3ICsyMzEsNyBAQCBzdGF0aWMgY29uc3QgbWF0Y2hfdGFi
bGVfdCB0b2tlbnMgPSB7CiB9OwogCiBzdGF0aWMgaW50IHBhcnNlX29wdGlvbnMoY2hhciAqb3B0
aW9ucywgc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgczY0ICpuZXdMVlNpemUsCi0JCQkgaW50ICpm
bGFnKQorCQkJIGludCAqZmxhZywgaW50IHJlbW91bnQpCiB7CiAJdm9pZCAqbmxzX21hcCA9ICh2
b2lkICopLTE7CS8qIC0xOiBubyBjaGFuZ2U7ICBOVUxMOiBub25lICovCiAJY2hhciAqcDsKQEAg
LTI2MywxNCArMjYzLDE0IEBAIHN0YXRpYyBpbnQgcGFyc2Vfb3B0aW9ucyhjaGFyICpvcHRpb25z
LCBzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCBzNjQgKm5ld0xWU2l6ZSwKIAkJY2FzZSBPcHRfaW9j
aGFyc2V0OgogCQkJaWYgKG5sc19tYXAgJiYgbmxzX21hcCAhPSAodm9pZCAqKSAtMSkKIAkJCQl1
bmxvYWRfbmxzKG5sc19tYXApOwotCQkJaWYgKCFzdHJjbXAoYXJnc1swXS5mcm9tLCAibm9uZSIp
KQotCQkJCW5sc19tYXAgPSBOVUxMOwotCQkJZWxzZSB7CisJCQkvKiBjb21wYXRpYmlsaXR5IGFs
aWFzIG5vbmUgbWVhbnMgSVNPLTg4NTktMSAqLworCQkJaWYgKHN0cmNtcChhcmdzWzBdLmZyb20s
ICJub25lIikgPT0gMCkKKwkJCQlubHNfbWFwID0gbG9hZF9ubHMoImlzbzg4NTktMSIpOworCQkJ
ZWxzZQogCQkJCW5sc19tYXAgPSBsb2FkX25scyhhcmdzWzBdLmZyb20pOwotCQkJCWlmICghbmxz
X21hcCkgewotCQkJCQlwcl9lcnIoIkpGUzogY2hhcnNldCBub3QgZm91bmRcbiIpOwotCQkJCQln
b3RvIGNsZWFudXA7Ci0JCQkJfQorCQkJaWYgKCFubHNfbWFwKSB7CisJCQkJcHJfZXJyKCJKRlM6
IGNoYXJzZXQgbm90IGZvdW5kXG4iKTsKKwkJCQlnb3RvIGNsZWFudXA7CiAJCQl9CiAJCQlicmVh
azsKIAkJY2FzZSBPcHRfcmVzaXplOgpAQCAtNDA5LDYgKzQwOSwxNSBAQCBzdGF0aWMgaW50IHBh
cnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgczY0ICpu
ZXdMVlNpemUsCiAJCX0KIAl9CiAKKwlpZiAoIXJlbW91bnQgJiYgbmxzX21hcCA9PSAodm9pZCAq
KSAtMSkgeworCQkvKiBQcmV2aW91c2x5IGRlZmF1bHQgTkxTIHRhYmxlIHdhcyBJU08tODg1OS0x
ICovCisJCW5sc19tYXAgPSBsb2FkX25scygiaXNvODg1OS0xIik7CisJCWlmICghbmxzX21hcCkg
eworCQkJcHJfZXJyKCJKRlM6IGlzbzg4NTktMSBjaGFyc2V0IG5vdCBmb3VuZFxuIik7CisJCQln
b3RvIGNsZWFudXA7CisJCX0KKwl9CisKIAlpZiAobmxzX21hcCAhPSAodm9pZCAqKSAtMSkgewog
CQkvKiBEaXNjYXJkIG9sZCAoaWYgcmVtb3VudCkgKi8KIAkJdW5sb2FkX25scyhzYmktPm5sc190
YWIpOwpAQCAtNDMwLDcgKzQzOSw3IEBAIHN0YXRpYyBpbnQgamZzX3JlbW91bnQoc3RydWN0IHN1
cGVyX2Jsb2NrICpzYiwgaW50ICpmbGFncywgY2hhciAqZGF0YSkKIAlpbnQgcmV0OwogCiAJc3lu
Y19maWxlc3lzdGVtKHNiKTsKLQlpZiAoIXBhcnNlX29wdGlvbnMoZGF0YSwgc2IsICZuZXdMVlNp
emUsICZmbGFnKSkKKwlpZiAoIXBhcnNlX29wdGlvbnMoZGF0YSwgc2IsICZuZXdMVlNpemUsICZm
bGFnLCAxKSkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKIAlpZiAobmV3TFZTaXplKSB7CkBAIC01MDgs
NyArNTE3LDcgQEAgc3RhdGljIGludCBqZnNfZmlsbF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sg
KnNiLCB2b2lkICpkYXRhLCBpbnQgc2lsZW50KQogCS8qIGluaXRpYWxpemUgdGhlIG1vdW50IGZs
YWcgYW5kIGRldGVybWluZSB0aGUgZGVmYXVsdCBlcnJvciBoYW5kbGVyICovCiAJZmxhZyA9IEpG
U19FUlJfUkVNT1VOVF9STzsKIAotCWlmICghcGFyc2Vfb3B0aW9ucygoY2hhciAqKSBkYXRhLCBz
YiwgJm5ld0xWU2l6ZSwgJmZsYWcpKQorCWlmICghcGFyc2Vfb3B0aW9ucygoY2hhciAqKSBkYXRh
LCBzYiwgJm5ld0xWU2l6ZSwgJmZsYWcsIDApKQogCQlnb3RvIG91dF9rZnJlZTsKIAlzYmktPmZs
YWcgPSBmbGFnOwogCi0tIAoyLjIwLjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
