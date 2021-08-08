Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B633E468F
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Ji-0004ds-IJ; Mon, 09 Aug 2021 13:27:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pali@kernel.org>)
 id 1mClcL-0005gc-HE; Sun, 08 Aug 2021 16:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pT1w13WRj/5/yfjG/wb5E2nqI1RS/1mqmtLQDjEc2vU=; b=iVKZLOKbPIislM6RGOwcfOisjT
 WrAQU6JYlCSo6Ca9bVMrC/dOUDzaAKYl3HWhY7ljQFTL9MvJ3i7zcKawlXwRKwR4tHKdkvJYgAF5n
 /qyEQbiy8s064CliHmxlfbB5kGhUgE1N02L04YDQepa8NyHhZ+WYQ+9WokBXye6zTRCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pT1w13WRj/5/yfjG/wb5E2nqI1RS/1mqmtLQDjEc2vU=; b=ida5gtnFug5Po04EOvyPED5j5O
 CbtZZ30qisi1UQWtpETqVoCcw/5ZCHncBOhN/nsW9f0WwIl+MP64J5RoLLwPTZ9nM2RGYK1ddGtej
 GxgX4TO/GmrsEFSRoY9f9z44nNpg4Q7awlhLJwxdrfN4xYQYVQqQ/LjcZ48P/xb3+Ctk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcJ-00GyYI-Vp; Sun, 08 Aug 2021 16:25:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E395261181;
 Sun,  8 Aug 2021 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439923;
 bh=5u2bH7VJtM/e+LvuxtpQp+PsRT4F9kDqvViUS/4AlLc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=VNZD/+/toD+1ZXHutTrnUuA/X4YKv2DDfY8fFHiCGmZWaj/BO1eAHk4zAGDvdTs9D
 nL40mtNrXob1hY4WSEBkih48b7aVpNXD1XdIwBPUjHu+R+ompbR+FElwH1aU4K9IS3
 FrnfKMNx8S+WFLrSMlR7BOwcrH1hL5kwJpLOH8ZCw6VbJGOkBmIoamPXUvgZMAda6H
 06h3CtuWa/Sq8XQ9YbhKlUxq3l/ixjgf+QswdEOR2nieVKCdtX3HCjcBphPjNrs9a6
 K6gMmRS4+yl1Ub+EDMytsUCZvrdQx+KbsP8rAa+TTWx0t5M5nPDdxt3MWBJV14yDfk
 Et1t9ytlsTEaQ==
Received: by pali.im (Postfix)
 id A155D1430; Sun,  8 Aug 2021 18:25:22 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:53 +0200
Message-Id: <20210808162453.1653-21-pali@kernel.org>
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
X-Headers-End: 1mClcJ-00GyYI-Vp
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:41 +0000
Subject: [Jfs-discussion] [RFC PATCH 20/20] nls: Drop broken nls_utf8 module
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

TkxTIHRhYmxlIGZvciB1dGY4IGlzIGJyb2tlbiBhbmQgY2Fubm90IGJlIGZpeGVkLgoKTm93IHRo
YXQgYWxsIGZpbGVzeXN0ZW1zIGFyZSB1c2luZyB1dGY4c190b191dGYxNnMoKS91dGYxNnNfdG9f
dXRmOHMoKQpmdW5jdGlvbnMgZm9yIGNvbnZlcnRpbmcgYmV0d2VlbiBVVEYtOCBhbmQgVVRGLTE2
LCBhbmQgZnVuY3Rpb25zCnV0ZjhfdG9fdXRmMzIoKS91dGYzMl90b191dGY4KCkgZm9yIGNvbnZl
cnRpbmcgYmV0d2VlbiBVVEYtOCBhbmQgVW5pY29kZQpjb2RlIHBvaW50cywgdGhlcmUgaXMgbm8g
bmVlZCB0byBoYXZlIHRoaXMgYnJva2VuIHV0ZjggTkxTIG1vZHVsZSBpbiBrZXJuZWwKdHJlZSBh
bnltb3JlLgoKVGhlcmUgaXMgbm8gdXNlciBvZiB0aGlzIHV0ZjggTkxTIG1vZHVsZSwgc28gY29t
cGxldGVseSBkcm9wIGl0LAoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVs
Lm9yZz4KLS0tCiBmcy9ubHMvS2NvbmZpZyAgICB8ICA5IC0tLS0tLS0KIGZzL25scy9NYWtlZmls
ZSAgIHwgIDEgLQogZnMvbmxzL25sc191dGY4LmMgfCA2NyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA3NyBkZWxldGlvbnMo
LSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9ubHMvbmxzX3V0ZjguYwoKZGlmZiAtLWdpdCBhL2Zz
L25scy9LY29uZmlnIGIvZnMvbmxzL0tjb25maWcKaW5kZXggYzc4NTdlMzZhZGJiLi44ZjgyY2Yz
MGE0OTMgMTAwNjQ0Ci0tLSBhL2ZzL25scy9LY29uZmlnCisrKyBiL2ZzL25scy9LY29uZmlnCkBA
IC02MDgsMTMgKzYwOCw0IEBAIGNvbmZpZyBOTFNfTUFDX1RVUktJU0gKIAogCSAgSWYgdW5zdXJl
LCBzYXkgWS4KIAotY29uZmlnIE5MU19VVEY4Ci0JdHJpc3RhdGUgIk5MUyBVVEYtOCIKLQloZWxw
Ci0JICBJZiB5b3Ugd2FudCB0byBkaXNwbGF5IGZpbGVuYW1lcyB3aXRoIG5hdGl2ZSBsYW5ndWFn
ZSBjaGFyYWN0ZXJzCi0JICBmcm9tIHRoZSBNaWNyb3NvZnQgRkFUIGZpbGUgc3lzdGVtIGZhbWls
eSBvciBmcm9tIEpPTElFVCBDRC1ST01zCi0JICBjb3JyZWN0bHkgb24gdGhlIHNjcmVlbiwgeW91
IG5lZWQgdG8gaW5jbHVkZSB0aGUgYXBwcm9wcmlhdGUKLQkgIGlucHV0L291dHB1dCBjaGFyYWN0
ZXIgc2V0cy4gU2F5IFkgaGVyZSBmb3IgdGhlIFVURi04IGVuY29kaW5nIG9mCi0JICB0aGUgVW5p
Y29kZS9JU085NjQ2IHVuaXZlcnNhbCBjaGFyYWN0ZXIgc2V0LgotCiBlbmRpZiAjIE5MUwpkaWZm
IC0tZ2l0IGEvZnMvbmxzL01ha2VmaWxlIGIvZnMvbmxzL01ha2VmaWxlCmluZGV4IGFjNTRkYjI5
NzEyOC4uZTU3M2RiN2ZjMTczIDEwMDY0NAotLS0gYS9mcy9ubHMvTWFrZWZpbGUKKysrIGIvZnMv
bmxzL01ha2VmaWxlCkBAIC00Miw3ICs0Miw2IEBAIG9iai0kKENPTkZJR19OTFNfSVNPODg1OV8x
NCkJKz0gbmxzX2lzbzg4NTktMTQubwogb2JqLSQoQ09ORklHX05MU19JU084ODU5XzE1KQkrPSBu
bHNfaXNvODg1OS0xNS5vCiBvYmotJChDT05GSUdfTkxTX0tPSThfUikJKz0gbmxzX2tvaTgtci5v
CiBvYmotJChDT05GSUdfTkxTX0tPSThfVSkJKz0gbmxzX2tvaTgtdS5vIG5sc19rb2k4LXJ1Lm8K
LW9iai0kKENPTkZJR19OTFNfVVRGOCkJCSs9IG5sc191dGY4Lm8KIG9iai0kKENPTkZJR19OTFNf
TUFDX0NFTFRJQykgICAgKz0gbWFjLWNlbHRpYy5vCiBvYmotJChDT05GSUdfTkxTX01BQ19DRU5U
RVVSTykgICs9IG1hYy1jZW50ZXVyby5vCiBvYmotJChDT05GSUdfTkxTX01BQ19DUk9BVElBTikg
ICs9IG1hYy1jcm9hdGlhbi5vCmRpZmYgLS1naXQgYS9mcy9ubHMvbmxzX3V0ZjguYyBiL2ZzL25s
cy9ubHNfdXRmOC5jCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBhZmNmYmM0YTE0ZGIu
LjAwMDAwMDAwMDAwMAotLS0gYS9mcy9ubHMvbmxzX3V0ZjguYworKysgL2Rldi9udWxsCkBAIC0x
LDY3ICswLDAgQEAKLS8qCi0gKiBNb2R1bGUgZm9yIGhhbmRsaW5nIHV0ZjgganVzdCBsaWtlIGFu
eSBvdGhlciBjaGFyc2V0LgotICogQnkgVXJiYW4gV2lkbWFyayAyMDAwCi0gKi8KLQotI2luY2x1
ZGUgPGxpbnV4L21vZHVsZS5oPgotI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgotI2luY2x1ZGUg
PGxpbnV4L3N0cmluZy5oPgotI2luY2x1ZGUgPGxpbnV4L25scy5oPgotI2luY2x1ZGUgPGxpbnV4
L2Vycm5vLmg+Ci0KLXN0YXRpYyB1bnNpZ25lZCBjaGFyIGlkZW50aXR5WzI1Nl07Ci0KLXN0YXRp
YyBpbnQgdW5pMmNoYXIod2NoYXJfdCB1bmksIHVuc2lnbmVkIGNoYXIgKm91dCwgaW50IGJvdW5k
bGVuKQotewotCWludCBuOwotCi0JaWYgKGJvdW5kbGVuIDw9IDApCi0JCXJldHVybiAtRU5BTUVU
T09MT05HOwotCi0JbiA9IHV0ZjMyX3RvX3V0ZjgodW5pLCBvdXQsIGJvdW5kbGVuKTsKLQlpZiAo
biA8IDApIHsKLQkJKm91dCA9ICc/JzsKLQkJcmV0dXJuIC1FSU5WQUw7Ci0JfQotCXJldHVybiBu
OwotfQotCi1zdGF0aWMgaW50IGNoYXIydW5pKGNvbnN0IHVuc2lnbmVkIGNoYXIgKnJhd3N0cmlu
ZywgaW50IGJvdW5kbGVuLCB3Y2hhcl90ICp1bmkpCi17Ci0JaW50IG47Ci0JdW5pY29kZV90IHU7
Ci0KLQluID0gdXRmOF90b191dGYzMihyYXdzdHJpbmcsIGJvdW5kbGVuLCAmdSk7Ci0JaWYgKG4g
PCAwIHx8IHUgPiBNQVhfV0NIQVJfVCkgewotCQkqdW5pID0gMHgwMDNmOwkvKiA/ICovCi0JCXJl
dHVybiAtRUlOVkFMOwotCX0KLQkqdW5pID0gKHdjaGFyX3QpIHU7Ci0JcmV0dXJuIG47Ci19Ci0K
LXN0YXRpYyBzdHJ1Y3QgbmxzX3RhYmxlIHRhYmxlID0gewotCS5jaGFyc2V0CT0gInV0ZjgiLAot
CS51bmkyY2hhcgk9IHVuaTJjaGFyLAotCS5jaGFyMnVuaQk9IGNoYXIydW5pLAotCS5jaGFyc2V0
Mmxvd2VyCT0gaWRlbnRpdHksCS8qIG5vIGNvbnZlcnNpb24gKi8KLQkuY2hhcnNldDJ1cHBlcgk9
IGlkZW50aXR5LAotfTsKLQotc3RhdGljIGludCBfX2luaXQgaW5pdF9ubHNfdXRmOCh2b2lkKQot
ewotCWludCBpOwotCWZvciAoaT0wOyBpPDI1NjsgaSsrKQotCQlpZGVudGl0eVtpXSA9IGk7Ci0K
LSAgICAgICAgcmV0dXJuIHJlZ2lzdGVyX25scygmdGFibGUpOwotfQotCi1zdGF0aWMgdm9pZCBf
X2V4aXQgZXhpdF9ubHNfdXRmOCh2b2lkKQotewotICAgICAgICB1bnJlZ2lzdGVyX25scygmdGFi
bGUpOwotfQotCi1tb2R1bGVfaW5pdChpbml0X25sc191dGY4KQotbW9kdWxlX2V4aXQoZXhpdF9u
bHNfdXRmOCkKLU1PRFVMRV9MSUNFTlNFKCJEdWFsIEJTRC9HUEwiKTsKLS0gCjIuMjAuMQoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9u
Cg==
