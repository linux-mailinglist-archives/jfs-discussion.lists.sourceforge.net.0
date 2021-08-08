Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC8D3E468B
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jg-0004b7-IY; Mon, 09 Aug 2021 13:27:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcC-0003OQ-EQ; Sun, 08 Aug 2021 16:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U4XPtNtIifzqxc02m3sbCM2ZQI0SeFr/8gLzRttx5dA=; b=h1BhTq8HjpHDxkXgIvun54mye0
 92WR8DuGVmOCXd4unU937OHyd6zBlyzH1NjyqGupVMW3rfVmIXP2yLv5rL+1sF9B65vxaTjrZFikX
 hE8dwUWyTx3Y8xi0/wy3PPfmcdnYHaxXJrgaxOvlzg2tcjIx4N+zebEwqwBZFVUMoulw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U4XPtNtIifzqxc02m3sbCM2ZQI0SeFr/8gLzRttx5dA=; b=kAjApm+uPg7lhyJ4Yd0vjVe6mw
 MO4BMpV7BgoplV2hjHoRRpbZZrvXIbh+q1TWHlkAbqMN0SLVp3tpHB8KvACA1eyRu2iv0fCU584+1
 HkiPCQ4PI/lvEnZ2ueF9STIoqd6M9yHdiR2wg8+6Ows+phdGe8V7P5R8M6DqMu5Uwoa4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClc5-0001vd-Hw; Sun, 08 Aug 2021 16:25:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5A3DC61019;
 Sun,  8 Aug 2021 16:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439915;
 bh=SvKOqyPaGSzoaIcYwQ0yRxDdigaErxC/HKUfKX6Zrtc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=hOZn2eQCBH07F4do1hg8Lbo8/EGitk9c3nGslXaoXHoJxnwmVTzTopeoh/i5A+dRz
 +hQyiLFU/vjmhXfbIJewjGg1jkhXeGsEnpxngLTaIgA59xilyJ2ZFZye8CkUDUtfOV
 3WRkf9aeq56MTG9sEJInu+TH1/yNQcfq32ljdAb0Y69r8mgh12oytPhYvL7poh9Cd6
 o6xss5RH6D72UXPJugRdVHUOczcg8p3OVR2VzGag1zeGHAsfFd46hap86mxOCoAiBG
 nWf2ZYxdARW30jDLeuJ/JON5j5ccLn85rtPTgzuUrjPA7YinjA1o3XKOlPrpewC1Y/
 AGayuPIIx4VMA==
Received: by pali.im (Postfix)
 id 730F21545; Sun,  8 Aug 2021 18:25:13 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:35 +0200
Message-Id: <20210808162453.1653-3-pali@kernel.org>
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
X-Headers-End: 1mClc5-0001vd-Hw
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:39 +0000
Subject: [Jfs-discussion] [RFC PATCH 02/20] hfsplus: Add iocharset= mount
 option as alias for nls=
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

T3RoZXIgZnMgZHJpdmVycyBhcmUgdXNpbmcgaW9jaGFyc2V0PSBtb3VudCBvcHRpb24gZm9yIHNw
ZWNpZnlpbmcgY2hhcnNldC4KU28gYWRkIGl0IGFsc28gZm9yIGhmc3BsdXMgYW5kIG1hcmsgb2xk
IG5scz0gbW91bnQgb3B0aW9uIGFzIGRlcHJlY2F0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBQYWxpIFJv
aMOhciA8cGFsaUBrZXJuZWwub3JnPgotLS0KIGZzL2hmc3BsdXMvb3B0aW9ucy5jIHwgNyArKysr
KystCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZnMvaGZzcGx1cy9vcHRpb25zLmMgYi9mcy9oZnNwbHVzL29wdGlvbnMuYwppbmRl
eCAwNDdlMDVjNTc1NjAuLmE5NzU1NDhmNmI5MSAxMDA2NDQKLS0tIGEvZnMvaGZzcGx1cy9vcHRp
b25zLmMKKysrIGIvZnMvaGZzcGx1cy9vcHRpb25zLmMKQEAgLTIzLDYgKzIzLDcgQEAgZW51bSB7
CiAJb3B0X2NyZWF0b3IsIG9wdF90eXBlLAogCW9wdF91bWFzaywgb3B0X3VpZCwgb3B0X2dpZCwK
IAlvcHRfcGFydCwgb3B0X3Nlc3Npb24sIG9wdF9ubHMsCisJb3B0X2lvY2hhcnNldCwKIAlvcHRf
bm9kZWNvbXBvc2UsIG9wdF9kZWNvbXBvc2UsCiAJb3B0X2JhcnJpZXIsIG9wdF9ub2JhcnJpZXIs
CiAJb3B0X2ZvcmNlLCBvcHRfZXJyCkBAIC0zNyw2ICszOCw3IEBAIHN0YXRpYyBjb25zdCBtYXRj
aF90YWJsZV90IHRva2VucyA9IHsKIAl7IG9wdF9wYXJ0LCAicGFydD0ldSIgfSwKIAl7IG9wdF9z
ZXNzaW9uLCAic2Vzc2lvbj0ldSIgfSwKIAl7IG9wdF9ubHMsICJubHM9JXMiIH0sCisJeyBvcHRf
aW9jaGFyc2V0LCAiaW9jaGFyc2V0PSVzIiB9LAogCXsgb3B0X2RlY29tcG9zZSwgImRlY29tcG9z
ZSIgfSwKIAl7IG9wdF9ub2RlY29tcG9zZSwgIm5vZGVjb21wb3NlIiB9LAogCXsgb3B0X2JhcnJp
ZXIsICJiYXJyaWVyIiB9LApAQCAtMTY2LDYgKzE2OCw5IEBAIGludCBoZnNwbHVzX3BhcnNlX29w
dGlvbnMoY2hhciAqaW5wdXQsIHN0cnVjdCBoZnNwbHVzX3NiX2luZm8gKnNiaSkKIAkJCX0KIAkJ
CWJyZWFrOwogCQljYXNlIG9wdF9ubHM6CisJCQlwcl93YXJuKCJvcHRpb24gbmxzPSBpcyBkZXBy
ZWNhdGVkLCB1c2UgaW9jaGFyc2V0PVxuIik7CisJCQkvKiBmYWxsdGhyb3VnaCAqLworCQljYXNl
IG9wdF9pb2NoYXJzZXQ6CiAJCQlpZiAoc2JpLT5ubHMpIHsKIAkJCQlwcl9lcnIoInVuYWJsZSB0
byBjaGFuZ2UgbmxzIG1hcHBpbmdcbiIpOwogCQkJCXJldHVybiAwOwpAQCAtMjMwLDcgKzIzNSw3
IEBAIGludCBoZnNwbHVzX3Nob3dfb3B0aW9ucyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgc3RydWN0
IGRlbnRyeSAqcm9vdCkKIAlpZiAoc2JpLT5zZXNzaW9uID49IDApCiAJCXNlcV9wcmludGYoc2Vx
LCAiLHNlc3Npb249JXUiLCBzYmktPnNlc3Npb24pOwogCWlmIChzYmktPm5scykKLQkJc2VxX3By
aW50ZihzZXEsICIsbmxzPSVzIiwgc2JpLT5ubHMtPmNoYXJzZXQpOworCQlzZXFfcHJpbnRmKHNl
cSwgIixpb2NoYXJzZXQ9JXMiLCBzYmktPm5scy0+Y2hhcnNldCk7CiAJaWYgKHRlc3RfYml0KEhG
U1BMVVNfU0JfTk9ERUNPTVBPU0UsICZzYmktPmZsYWdzKSkKIAkJc2VxX3B1dHMoc2VxLCAiLG5v
ZGVjb21wb3NlIik7CiAJaWYgKHRlc3RfYml0KEhGU1BMVVNfU0JfTk9CQVJSSUVSLCAmc2JpLT5m
bGFncykpCi0tIAoyLjIwLjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
