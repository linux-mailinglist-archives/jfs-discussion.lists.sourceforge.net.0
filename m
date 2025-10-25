Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D61CC095E1
	for <lists+jfs-discussion@lfdr.de>; Sat, 25 Oct 2025 18:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RQbw+Rl9u9IkhRBibigDV1/ShZvb76RLIM1bcYjsdVc=; b=KuhI2aiPE8LmWvE5cg4n0lhTB8
	v/waTpPTBzQunLij7H6bLBEvtoEVtt1jFnswkp30r8MAigSpYr6oIJ39woKV+UWHoxqL+b16ez9F6
	BlpGAuBRVOnyFRjoxLXmeZtksfGs1XZh82XLDfP41ft6J94NsS7vJo9kUd8G7PFVXxXw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCh0B-0006F3-Py;
	Sat, 25 Oct 2025 16:20:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1vCh09-0006Ew-Mg
 for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Oct 2025 16:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VPBX/q7+7vAxFyFuRCE7ujcJR3PsQIDeQjvMJnSxkDo=; b=VNQw8Lh6yiZPQ/E3XZ8fJFY7gb
 an4umig4ukulCQr4DCTBFq+Xb65i8p2Gao2Ks3iyzIsEivhfGaqGNQ93sJJ5OF5sLh+o/wHNOo8ZF
 OSRNIIwJj4MiY23sZ6G/pTswJZpIkK7P7urGvjEtNmf2DZeHEFq1DP9VjH4MBVuDpiA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VPBX/q7+7vAxFyFuRCE7ujcJR3PsQIDeQjvMJnSxkDo=; b=NJ7mZhEfu6Z4Tv9u/PYZ+N83eR
 SWLDA04jIWn9EyEnwW1GbyK40sBVYuq8JZDxlb7MHzqjq/o1EQOHWmaqBGqt1v/6w0V6jagWRLgCh
 kdvgEv1DHt04vzSDzzNtMfJWMHExHsmRPRm5Xz0/a9SvTI29ee+/1NEhtTcalaXBtii4=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCh09-0003Vp-4r for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Oct 2025 16:20:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AFF84450E8;
 Sat, 25 Oct 2025 16:20:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34535C4CEF5;
 Sat, 25 Oct 2025 16:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1761409210;
 bh=Azs5/WmDLV1h8jBKANAqoGYQS7sR47L8sRbriesti6Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=prW4GD0yp1qrBAMOTDJzSbMwUJjYeBYNC0YnYHSq6n3RRtH4Bl3Y5g9sZCbtXLd3j
 iG9A56YUIvtR8R5kzqezgLfipFT+he/GagiFbZ58OVZ/DQYlXHO+ugf5RM8dBNC6ML
 U/Fj2nqagxIOMmSybM0kG4q/BuMi0KOsb12ZTnIgIxZ6tBrzM3j/avOu1yc5CIsTR5
 61XROhUeVkV+3UeEnDyNV6Rh0Xq89Jhjt9a93JaPQefkeQZV2jdeaqjZeYR5GoJ8uI
 Hi0YJOMSuQKbW80q8JhGyorz6qOyuc2U4v5QS1yEvJd+mlYBNe/rGO22cS9G2Zqi4Z
 aRob4oB4OFatQ==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sat, 25 Oct 2025 11:57:54 -0400
Message-ID: <20251025160905.3857885-243-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251025160905.3857885-1-sashal@kernel.org>
References: <20251025160905.3857885-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.17.5
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp> [
 Upstream commit 7a5aa54fba2bd591b22b9b624e6baa9037276986 ] The inode mode
 loaded from corrupted disk can be invalid. Do like what commit 0a9e74051313
 ("isofs: Verify inode mode when loading from disk") does. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vCh09-0003Vp-4r
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.17-5.4] jfs: Verify inode mode
 when loading from disk
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org, brauner@kernel.org,
 chentaotao@didiglobal.com, Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 jfs-discussion@lists.sourceforge.net, lizhi.xu@windriver.com,
 syzbot <syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com>,
 kovalev@altlinux.org, alexandre.f.demers@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

RnJvbTogVGV0c3VvIEhhbmRhIDxwZW5ndWluLWtlcm5lbEBJLWxvdmUuU0FLVVJBLm5lLmpwPgoK
WyBVcHN0cmVhbSBjb21taXQgN2E1YWE1NGZiYTJiZDU5MWIyMmI5YjYyNGU2YmFhOTAzNzI3Njk4
NiBdCgpUaGUgaW5vZGUgbW9kZSBsb2FkZWQgZnJvbSBjb3JydXB0ZWQgZGlzayBjYW4gYmUgaW52
YWxpZC4gRG8gbGlrZSB3aGF0CmNvbW1pdCAwYTllNzQwNTEzMTMgKCJpc29mczogVmVyaWZ5IGlu
b2RlIG1vZGUgd2hlbiBsb2FkaW5nIGZyb20gZGlzayIpCmRvZXMuCgpSZXBvcnRlZC1ieTogc3l6
Ym90IDxzeXpib3QrODk1YzIzZjY5MTdkYTQ0MGVkMGRAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNv
bT4KQ2xvc2VzOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9ODk1YzIz
ZjY5MTdkYTQ0MGVkMGQKU2lnbmVkLW9mZi1ieTogVGV0c3VvIEhhbmRhIDxwZW5ndWluLWtlcm5l
bEBJLWxvdmUuU0FLVVJBLm5lLmpwPgpTaWduZWQtb2ZmLWJ5OiBEYXZlIEtsZWlrYW1wIDxkYXZl
LmtsZWlrYW1wQG9yYWNsZS5jb20+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxA
a2VybmVsLm9yZz4KLS0tCgpMTE0gR2VuZXJhdGVkIGV4cGxhbmF0aW9ucywgbWF5IGJlIGNvbXBs
ZXRlbHkgYm9ndXM6CgpZRVMKLSBUaGUgY2hhbmdlIGJvdW5kcyB0aGUgc3BlY2lhbC1maWxlIHBh
dGggaW4gYGpmc19pZ2V0KClgIHRvIHRoZSBmb3VyCiAgdmFsaWQgc3BlY2lhbCBpbm9kZSBjbGFz
c2VzIChgU19JU0NIUi9TX0lTQkxLL1NfSVNGSUZPL1NfSVNTT0NLYCkKICBiZWZvcmUgY2FsbGlu
ZyBgaW5pdF9zcGVjaWFsX2lub2RlKClgIChgZnMvamZzL2lub2RlLmM6NjItNjVgKS4gVGhhdAog
IHByZXZlbnRzIGludmFsaWQgb24tZGlzayBtb2RlcyBmcm9tIHNpbGVudGx5IGZsb3dpbmcgaW50
bwogIGBpbml0X3NwZWNpYWxfaW5vZGUoKWAsIHdoaWNoIG90aGVyd2lzZSBvbmx5IGVtaXRzIGEg
ZGVidWcgbWVzc2FnZSBhbmQKICBsZWF2ZXMgYGlfZm9wYCB1bnNldCAoYGZzL2lub2RlLmM6MjU2
MC0yNTgzYCksIG1ha2luZyBsYXRlciBWRlMKICBvcGVyYXRpb25zIHRyaXAgb3ZlciBhIGBOVUxM
YCBtZXRob2QgdGFibGUuIFN5emthbGxlciBhbHJlYWR5IGhpdCB0aGF0CiAgY3Jhc2ggc2NlbmFy
aW8gb24gY29ycnVwdGVkIG1ldGFkYXRhLCBzbyB0aGlzIGlzIGEgcmVhbCBidWcgZml4LCBub3QK
ICBqdXN0IGhhcmRlbmluZy4KLSBXaGVuIHRoZSBtb2RlIGlzIG91dHNpZGUgZXZlcnkgbGVnYWwg
Y2xhc3MsIHRoZSBuZXcgYnJhbmNoIGxvZ3MgdGhlCiAgYW5vbWFseSBhbmQgZmFpbHMgdGhlIGln
ZXQgKGBmcy9qZnMvaW5vZGUuYzo2Ny03MGApLiBSZXR1cm5pbmcKICBgRVJSX1BUUigtRUlPKWAg
aXMgdGhlIHN0YW5kYXJkIGlkaW9tIGFscmVhZHkgdXNlZCBhIGZldyBsaW5lcyBhYm92ZQogIGZv
ciBvdGhlciBgZGlSZWFkKClgIGZhaWx1cmVzIChgZnMvamZzL2lub2RlLmM6MzQtMzhgKSwgc28g
Y2FsbGVycwogIHN1Y2ggYXMgYGpmc19yZWFkX3N1cGVyKClgIGFuZCBgamZzX2xvb2t1cCgpYCBh
bHJlYWR5IGV4cGVjdCBhbmQKICBoYW5kbGUgaXQuIFRoYXQgdHVybnMgYSBrZXJuZWwgY3Jhc2gg
aW50byBhbiBJL08gZXJyb3IsIG1hdGNoaW5nIHRoZQogIHN0YWJsZSB0cmVlIGdvYWwgb2Yg4oCc
ZG9u4oCZdCBwYW5pYyBvbiBjb3JydXB0ZWQgbWVkaWEu4oCdCi0gVGhlIHBhdGNoIGlzIG1pbmlt
YWwgYW5kIHNlbGYtY29udGFpbmVkOiBpdCB0b3VjaGVzIGEgc2luZ2xlIGZ1bmN0aW9uLAogIGFk
ZHMgbm8gbmV3IEFQSXMsIGFuZCBtaXJyb3JzIHRoZSBhbHJlYWR5LXVwc3RyZWFtZWQgaXNvZnMg
Zml4IGZvciB0aGUKICBzYW1lIHN5emJvdCByZXBvcnQuIE5vcm1hbCB3b3JrbG9hZHMgKHJlZ3Vs
YXIgZmlsZXMsIGRpcmVjdG9yaWVzLAogIHN5bWxpbmtzLCBhbmQgd2VsbC1mb3JtZWQgc3BlY2lh
bCBmaWxlcykgc3RheSBvbiB0aGVpciBleGlzdGluZyBwYXRocywKICBzbyByZWdyZXNzaW9uIHJp
c2sgaXMgbmVnbGlnaWJsZSB3aGlsZSB0aGUgcGF5b2ZmIGlzIHByZXZlbnRpbmcgYQogIHVzZXIt
dHJpZ2dlcmFibGUgY3Jhc2ggb24gZGFtYWdlZCB2b2x1bWVz4oCUc3F1YXJlbHkgd2l0aGluIHN0
YWJsZQogIGJhY2twb3J0IHBvbGljeS4gUG90ZW50aWFsIG5leHQgc3RlcDogcXVldWUgaXQgZm9y
IGFsbCBzdXBwb3J0ZWQKICBzdGFibGUgc2VyaWVzIHRoYXQgc3RpbGwgY2FycnkgdGhlIHZ1bG5l
cmFibGUgY29kZSBwYXRoLgoKIGZzL2pmcy9pbm9kZS5jIHwgOCArKysrKysrLQogMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2ZzL2pm
cy9pbm9kZS5jIGIvZnMvamZzL2lub2RlLmMKaW5kZXggZmNlZGViNTE0ZTE0YS4uMjFmM2QwMjlk
YTdkZCAxMDA2NDQKLS0tIGEvZnMvamZzL2lub2RlLmMKKysrIGIvZnMvamZzL2lub2RlLmMKQEAg
LTU5LDkgKzU5LDE1IEBAIHN0cnVjdCBpbm9kZSAqamZzX2lnZXQoc3RydWN0IHN1cGVyX2Jsb2Nr
ICpzYiwgdW5zaWduZWQgbG9uZyBpbm8pCiAJCQkgKi8KIAkJCWlub2RlLT5pX2xpbmtbaW5vZGUt
Pmlfc2l6ZV0gPSAnXDAnOwogCQl9Ci0JfSBlbHNlIHsKKwl9IGVsc2UgaWYgKFNfSVNDSFIoaW5v
ZGUtPmlfbW9kZSkgfHwgU19JU0JMSyhpbm9kZS0+aV9tb2RlKSB8fAorCQkgICBTX0lTRklGTyhp
bm9kZS0+aV9tb2RlKSB8fCBTX0lTU09DSyhpbm9kZS0+aV9tb2RlKSkgewogCQlpbm9kZS0+aV9v
cCA9ICZqZnNfZmlsZV9pbm9kZV9vcGVyYXRpb25zOwogCQlpbml0X3NwZWNpYWxfaW5vZGUoaW5v
ZGUsIGlub2RlLT5pX21vZGUsIGlub2RlLT5pX3JkZXYpOworCX0gZWxzZSB7CisJCXByaW50ayhL
RVJOX0RFQlVHICJKRlM6IEludmFsaWQgZmlsZSB0eXBlIDAlMDRvIGZvciBpbm9kZSAlbHUuXG4i
LAorCQkgICAgICAgaW5vZGUtPmlfbW9kZSwgaW5vZGUtPmlfaW5vKTsKKwkJaWdldF9mYWlsZWQo
aW5vZGUpOworCQlyZXR1cm4gRVJSX1BUUigtRUlPKTsKIAl9CiAJdW5sb2NrX25ld19pbm9kZShp
bm9kZSk7CiAJcmV0dXJuIGlub2RlOwotLSAKMi41MS4wCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApK
ZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
