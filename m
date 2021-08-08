Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E83E3E469A
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jg-0004az-C7; Mon, 09 Aug 2021 13:27:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClc8-0008Ct-4S; Sun, 08 Aug 2021 16:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9E7CGJPs5mjGrr0K7s2JdB4dyJivsQrZyo1aDTQ44Y8=; b=Y3x1o5BrPn3O6Qg5H65zdABLhS
 x3xkaNp/8RKwU6op6a36i+5GRvGxKKy285ZSJc+VG1EdXcyOBjicJmckjQWRJdWNkMwrWfIdGScVA
 1b/9mHOHNVkP/tUqkjVHYDj8hgm9bZtYJ5ghP72HPSLGjVwQaIsMR8DgFCDHKVg0b9zQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9E7CGJPs5mjGrr0K7s2JdB4dyJivsQrZyo1aDTQ44Y8=; b=Ahk7WfqKr3tCzS3aYJ0TBkZ8E4
 eZ84cziUnqNqhEwedgm97SrMUCUvZMX4OJsfGIz397JvNRJF1u6R0WzAcQa72gtNdC615Bb46zhR5
 KZ8QEQ7mHYVSI5NvK9t4p0MUcuVPCkW3Yl7tePggrBv03ULg+pPGdbEk8fa095umykko=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClc5-0001vj-Ni; Sun, 08 Aug 2021 16:25:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD0C961055;
 Sun,  8 Aug 2021 16:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439916;
 bh=zCoJxg1h9nD1iTSDYYND3mexw6H7t53eWmn6go64bfs=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=KVfLZD0YZScrG/ph5XGKHZLExECypqZLKM1X3Bw6ZrhrZQssU6SEQkjZnYlMvXkaR
 COtwyTy7mTKO7xBlFz89XRFPDD3/+Gc/NKY/On3DOulLfdnvv4J4ScFRsiYpXhq0lv
 a1JrO2z7K9QSxZCgxGHHGfpft8Utwx1RcfBoBqKc0OtMRoDyc2i3Xxal88+5ThTkey
 lh0oX3MYKO47tjOVLtR5wqip+kkYfUu9ymvx4f8TR7H9x5HltpMczA5tuXcaVXTLjv
 3XFMnvmwrj3bSfjmXdyLALozpaAwdoYScSgqArTGD5aCFLyTXbzfoPfDqD+3usumC2
 j1EVIpi7ZXROw==
Received: by pali.im (Postfix)
 id 99F5713DC; Sun,  8 Aug 2021 18:25:15 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:39 +0200
Message-Id: <20210808162453.1653-7-pali@kernel.org>
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
X-Headers-End: 1mClc5-0001vj-Ni
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:39 +0000
Subject: [Jfs-discussion] [RFC PATCH 06/20] ntfs: Fix error processing when
 load_nls() fails
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

RW5zdXJlIHRoYXQgc3BlY2lmaWVkIGNoYXJzZXQgaW4gaW9jaGFyc2V0PSBtb3VudCBvcHRpb24g
aXMgdXNlZC4gT24gZXJyb3IKY29ycmVjdGx5IHByb3BhZ2F0ZSBlcnJvciBjb2RlIGJhY2sgdG8g
dGhlIGNhbGxlci4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+
Ci0tLQogZnMvbnRmcy9zdXBlci5jIHwgMTggKysrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9u
dGZzL3N1cGVyLmMgYi9mcy9udGZzL3N1cGVyLmMKaW5kZXggMDJkZTFhYTA1YjdjLi42OWM3ODcx
Yjc0MmUgMTAwNjQ0Ci0tLSBhL2ZzL250ZnMvc3VwZXIuYworKysgYi9mcy9udGZzL3N1cGVyLmMK
QEAgLTk0LDcgKzk0LDcgQEAgc3RhdGljIGJvb2wgcGFyc2Vfb3B0aW9ucyhudGZzX3ZvbHVtZSAq
dm9sLCBjaGFyICpvcHQpCiAJdW1vZGVfdCBmbWFzayA9ICh1bW9kZV90KS0xLCBkbWFzayA9ICh1
bW9kZV90KS0xOwogCWludCBtZnRfem9uZV9tdWx0aXBsaWVyID0gLTEsIG9uX2Vycm9ycyA9IC0x
OwogCWludCBzaG93X3N5c19maWxlcyA9IC0xLCBjYXNlX3NlbnNpdGl2ZSA9IC0xLCBkaXNhYmxl
X3NwYXJzZSA9IC0xOwotCXN0cnVjdCBubHNfdGFibGUgKm5sc19tYXAgPSBOVUxMLCAqb2xkX25s
czsKKwlzdHJ1Y3QgbmxzX3RhYmxlICpubHNfbWFwID0gTlVMTDsKIAogCS8qIEkgYW0gbGF6eS4u
LiAoLTggKi8KICNkZWZpbmUgTlRGU19HRVRPUFRfV0lUSF9ERUZBVUxUKG9wdGlvbiwgdmFyaWFi
bGUsIGRlZmF1bHRfdmFsdWUpCVwKQEAgLTE5NSwyMCArMTk1LDEyIEBAIHN0YXRpYyBib29sIHBh
cnNlX29wdGlvbnMobnRmc192b2x1bWUgKnZvbCwgY2hhciAqb3B0KQogCQkJaWYgKCF2IHx8ICEq
dikKIAkJCQlnb3RvIG5lZWRzX2FyZzsKIHVzZV91dGY4OgotCQkJb2xkX25scyA9IG5sc19tYXA7
CisJCQl1bmxvYWRfbmxzKG5sc19tYXApOwogCQkJbmxzX21hcCA9IGxvYWRfbmxzKHYpOwogCQkJ
aWYgKCFubHNfbWFwKSB7Ci0JCQkJaWYgKCFvbGRfbmxzKSB7Ci0JCQkJCW50ZnNfZXJyb3Iodm9s
LT5zYiwgIk5MUyBjaGFyYWN0ZXIgc2V0ICIKLQkJCQkJCQkiJXMgbm90IGZvdW5kLiIsIHYpOwot
CQkJCQlyZXR1cm4gZmFsc2U7Ci0JCQkJfQotCQkJCW50ZnNfZXJyb3Iodm9sLT5zYiwgIk5MUyBj
aGFyYWN0ZXIgc2V0ICVzIG5vdCAiCi0JCQkJCQkiZm91bmQuIFVzaW5nIHByZXZpb3VzIG9uZSAl
cy4iLAotCQkJCQkJdiwgb2xkX25scy0+Y2hhcnNldCk7Ci0JCQkJbmxzX21hcCA9IG9sZF9ubHM7
Ci0JCQl9IGVsc2UgLyogbmxzX21hcCAqLyB7Ci0JCQkJdW5sb2FkX25scyhvbGRfbmxzKTsKKwkJ
CQludGZzX2Vycm9yKHZvbC0+c2IsICJOTFMgY2hhcmFjdGVyIHNldCAiCisJCQkJCSAgICIlcyBu
b3QgZm91bmQuIiwgdik7CisJCQkJcmV0dXJuIGZhbHNlOwogCQkJfQogCQl9IGVsc2UgaWYgKCFz
dHJjbXAocCwgInV0ZjgiKSkgewogCQkJYm9vbCB2YWwgPSBmYWxzZTsKLS0gCjIuMjAuMQoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9u
Cg==
