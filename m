Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5D13E469F
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jh-0004cS-Kv; Mon, 09 Aug 2021 13:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pali@kernel.org>)
 id 1mClcI-0005g5-Vy; Sun, 08 Aug 2021 16:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xlxrd+J5tNKvjzFvH9Iy6uB+hdD7q4qwnYo/xQrkdJ4=; b=iqjFDtZk1ZQZNhg9g0kXVNDYqW
 3dkBPxYRQJaiGhXCPGsCMPYNQURTIK6+SIcasXpdNmFcHnacdshyAX+8/lJMM+24SWRGs1RrebGmn
 PpM0UWT2AhL76PoFkkw1Vx5dVx0vrWSsLqa93kDAlUP1H5Fq6IZ5uLaWvXdbsAuepp7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xlxrd+J5tNKvjzFvH9Iy6uB+hdD7q4qwnYo/xQrkdJ4=; b=VQDY93olOZ2oX6/O5bnyWWUMr2
 ts8bmQM9ketLhUv5GKxjL2DTEZfvB6kKSh642+nEMDMSp5U79FOe4nPqxnwnrDjXe+jqphIdqJcZc
 Wb8ve6R7EjfoWlnqZBFGx44GpH6iHlYk+BBhAKkIekIJQDWLoJKMg2cX4P6/bCSiq8Cs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcH-00GyXy-Lz; Sun, 08 Aug 2021 16:25:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04B2E61057;
 Sun,  8 Aug 2021 16:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439920;
 bh=yqPsetOw4W6bNgWR24S/rgdafRjACRvNO9i2APLG5Ro=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=BtwW5Zl6wIxOKHFKlHcsPRe+j0YTnRSwYl6E6kuEnVHwY4CBX48L8O0rugI7wyCYC
 UnlD/kWdvO4XtPIXqTb9wFag7zVQd+J2uBqrUWWzyXYo7l34TOngROP6s7SQhK15CC
 ky5BgKIX53TpuEKZmKIFlZ9O8/DntW5KQ//t2T6jHyh2ljsaRO9T+KnRJbQ8f0R3TE
 UHq3mHTu4YXURWwRjPI43ewlLrf73Cra+K38i6EMoOMJsyUr8tat/P1CqLlFLgi3Go
 XZf3P9HXbdpA910MyUK3rx5xNerwfViTPsPc+th1TeeFWtsn74GqakoahK2cdtspTH
 7JxuJHSVoY2YA==
Received: by pali.im (Postfix)
 id B983D1430; Sun,  8 Aug 2021 18:25:19 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:47 +0200
Message-Id: <20210808162453.1653-15-pali@kernel.org>
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
X-Headers-End: 1mClcH-00GyXy-Lz
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:40 +0000
Subject: [Jfs-discussion] [RFC PATCH 14/20] jfs: Remove custom iso8859-1
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
OwpkaWZmIC0tZ2l0IGEvZnMvamZzL3N1cGVyLmMgYi9mcy9qZnMvc3VwZXIuYwppbmRleCA5MDMw
YWVhZjBmODguLjhiYTJhYzAzMjI5MiAxMDA2NDQKLS0tIGEvZnMvamZzL3N1cGVyLmMKKysrIGIv
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
azsKIAkJY2FzZSBPcHRfcmVzaXplOgpAQCAtNDE0LDYgKzQxNCwxNSBAQCBzdGF0aWMgaW50IHBh
cnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgczY0ICpu
ZXdMVlNpemUsCiAJCX0KIAl9CiAKKwlpZiAoIXJlbW91bnQgJiYgbmxzX21hcCA9PSAodm9pZCAq
KSAtMSkgeworCQkvKiBQcmV2aW91c2x5IGRlZmF1bHQgTkxTIHRhYmxlIHdhcyBJU08tODg1OS0x
ICovCisJCW5sc19tYXAgPSBsb2FkX25scygiaXNvODg1OS0xIik7CisJCWlmICghbmxzX21hcCkg
eworCQkJcHJfZXJyKCJKRlM6IGlzbzg4NTktMSBjaGFyc2V0IG5vdCBmb3VuZFxuIik7CisJCQln
b3RvIGNsZWFudXA7CisJCX0KKwl9CisKIAlpZiAobmxzX21hcCAhPSAodm9pZCAqKSAtMSkgewog
CQkvKiBEaXNjYXJkIG9sZCAoaWYgcmVtb3VudCkgKi8KIAkJdW5sb2FkX25scyhzYmktPm5sc190
YWIpOwpAQCAtNDM1LDcgKzQ0NCw3IEBAIHN0YXRpYyBpbnQgamZzX3JlbW91bnQoc3RydWN0IHN1
cGVyX2Jsb2NrICpzYiwgaW50ICpmbGFncywgY2hhciAqZGF0YSkKIAlpbnQgcmV0OwogCiAJc3lu
Y19maWxlc3lzdGVtKHNiKTsKLQlpZiAoIXBhcnNlX29wdGlvbnMoZGF0YSwgc2IsICZuZXdMVlNp
emUsICZmbGFnKSkKKwlpZiAoIXBhcnNlX29wdGlvbnMoZGF0YSwgc2IsICZuZXdMVlNpemUsICZm
bGFnLCAxKSkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKIAlpZiAobmV3TFZTaXplKSB7CkBAIC01MTMs
NyArNTIyLDcgQEAgc3RhdGljIGludCBqZnNfZmlsbF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sg
KnNiLCB2b2lkICpkYXRhLCBpbnQgc2lsZW50KQogCS8qIGluaXRpYWxpemUgdGhlIG1vdW50IGZs
YWcgYW5kIGRldGVybWluZSB0aGUgZGVmYXVsdCBlcnJvciBoYW5kbGVyICovCiAJZmxhZyA9IEpG
U19FUlJfUkVNT1VOVF9STzsKIAotCWlmICghcGFyc2Vfb3B0aW9ucygoY2hhciAqKSBkYXRhLCBz
YiwgJm5ld0xWU2l6ZSwgJmZsYWcpKQorCWlmICghcGFyc2Vfb3B0aW9ucygoY2hhciAqKSBkYXRh
LCBzYiwgJm5ld0xWU2l6ZSwgJmZsYWcsIDApKQogCQlnb3RvIG91dF9rZnJlZTsKIAlzYmktPmZs
YWcgPSBmbGFnOwogCi0tIAoyLjIwLjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
