Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AD1656318
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMn-00033q-7z;
	Mon, 26 Dec 2022 14:22:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMl-00033V-Fx;
 Mon, 26 Dec 2022 14:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gd1qQSioLg92DUimnR82AShrP0C1CTLKjwh7IQOpFqc=; b=AoYl1AcEAHA8HZHnzfWKEawCsl
 CQAo2StviV5QOMRCBUF6AYVOKkRd9SJS4sd5w80PfmXb5myobSWRGZByO0GBwD2LTnd6ulcyj1o+Z
 ZdM8NyHlT0jmjVledPl6tUi7cFCc/5C3BVhDpnA5CnQQZThyxcmTj8YteI1cropcC45o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gd1qQSioLg92DUimnR82AShrP0C1CTLKjwh7IQOpFqc=; b=L8qCsa2CsijGqNA08LD5l5egYw
 RGuLZz4CJP8UbAGQUNwaSepxeNpVlJbGKuGBCOG4MvxGFSERyc5PqbcP26DouDACI6uPtdPjYGAfB
 Bu+REUmVp8zqSgXMCY+b6TG1bnNEOOYnQw9RbGEjgT/iFIy69aG0uVG3mwoQMWRV/rkI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMk-00DHhI-Tg; Mon, 26 Dec 2022 14:22:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7ED6760EB2;
 Mon, 26 Dec 2022 14:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F842C433D2;
 Mon, 26 Dec 2022 14:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064525;
 bh=22S317lWg8AbLm/4T86Rzeza0QVf8ZdO+6YLdtwviT0=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=E4k5OXvypcw8JKWNx6C4dSUgCG2CsGTlxUbLraGkrXVSvF8AMAD7gX7KnyZDbc3uX
 ZsNzjvKiPxDxG+oR5TopbMGilH1sUH3bokqsnBHlqzkz4AQKh7/B9WXFNeej/reQya
 dU1Mnq6X+mGX9sykpmVkUki7ScBWs84ONjlv1qoJm0t7e79xu6cZNjMWpFMdd3vkwz
 UjJRhFH5fv+TqT8wdZI5Tw/E6K/zVf0vNVX4NLda6wj+29s3ruxs9Tya/z86tEjBE+
 rwVylYF+UiX3jen7J7X3chKLADzrU7lT2hxuBJSNwCHwCwa6bpWJSQgoDQpm+LrrLt
 Mb4naxRegkZ+g==
Received: by pali.im (Postfix)
 id DED229D7; Mon, 26 Dec 2022 15:22:04 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:36 +0100
Message-Id: <20221226142150.13324-5-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Ensure that specified charset in iocharset= mount option is
    used. On error correctly propagate error code back to the caller. Signed-off-by:
    Pali Rohár <pali@kernel.org> --- fs/ntfs/super.c | 18 +++++ 1 file changed,
    5 insertions(+), 13 deletions(-) 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMk-00DHhI-Tg
Subject: [Jfs-discussion] [RFC PATCH v2 04/18] ntfs: Fix error processing
 when load_nls() fails
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
dGZzL3N1cGVyLmMgYi9mcy9udGZzL3N1cGVyLmMKaW5kZXggNTU3NjJhYmRjMjJhLi5iNGYyNjAz
NWU3NTAgMTAwNjQ0Ci0tLSBhL2ZzL250ZnMvc3VwZXIuYworKysgYi9mcy9udGZzL3N1cGVyLmMK
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
