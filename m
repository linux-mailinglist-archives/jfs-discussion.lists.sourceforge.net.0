Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD47656329
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oN1-0001zb-5K;
	Mon, 26 Dec 2022 14:22:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMv-0001yN-Sj;
 Mon, 26 Dec 2022 14:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pT1w13WRj/5/yfjG/wb5E2nqI1RS/1mqmtLQDjEc2vU=; b=VUspSdWnBsoHhaP9KBV4JglwoO
 fFMtH+TX0IwLATTmNAdh8hyy9pWGDqY67lOsPIeZ9r7eW9EHcHNn4HiFS3DANwTvxIOPp3PZwTduj
 7y5kQC7yfAov3KljxguigErtqNjzvUY2Jv8JN1JcMzkPWLbAVm/41EGXpeWxKCabYr9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pT1w13WRj/5/yfjG/wb5E2nqI1RS/1mqmtLQDjEc2vU=; b=DmXINIiipyTV9rqLhZVDkSTv82
 1HVuEe5O7AmjNDFAzAtNfWQw7vKUszO/U1DysiuH2LUNzNJlkbcwHnfk6GATPS2n5vTUOTd+Qp5PF
 Snm0YuPZwcUNGcFEsvHP7V7uMItUiZbs6GzJGvPDSZ3Ev3dH0M+joPnqMOHAMd0swQAU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMv-0002CE-4w; Mon, 26 Dec 2022 14:22:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 064B960EDA;
 Mon, 26 Dec 2022 14:22:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72CF0C433F1;
 Mon, 26 Dec 2022 14:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064540;
 bh=5u2bH7VJtM/e+LvuxtpQp+PsRT4F9kDqvViUS/4AlLc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=tYsbgvlgOJaF8H1SdFzVwT/R2HizKskvG/7ePvtZ1Zah8Nowv0dae2/QH1uUXQEqN
 tX4oe095AgKLScJipg2QqH6fNYTdZPSsTR0sYqL/rSidlPk6T0S7zfLoTVNYWh65nG
 zuZYflHj8oifrjrkkGFs9qvR7uvaXg0ZiRsEK+oaBK/3425Ow6YEgPrqkj3OvCty7+
 J0F/0Nw1OTfl5g4GFaxoQXERgnMDONqMT3jkeLy4zuNVil9TnTAV0R6SM7irCbfJ81
 kvQ/bXiol65QJi1ZruhYHP+0nhxUyS8O1Zdk72l1CUaWTszATm4fxQLZIxpCKc/1Vw
 rJiMOl47B5OIw==
Received: by pali.im (Postfix)
 id 2D6729D7; Mon, 26 Dec 2022 15:22:20 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:50 +0100
Message-Id: <20221226142150.13324-19-pali@kernel.org>
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
 Content preview:  NLS table for utf8 is broken and cannot be fixed. Now that
 all filesystems are using utf8s_to_utf16s()/utf16s_to_utf8s() functions for
 converting between UTF-8 and UTF-16,
 and functions utf8_to_utf32()/utf32_to_utf8()
 for converting between UTF-8 and [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1p9oMv-0002CE-4w
Subject: [Jfs-discussion] [RFC PATCH v2 18/18] nls: Drop broken nls_utf8
 module
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
