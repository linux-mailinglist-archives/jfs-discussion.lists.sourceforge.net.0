Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E52643E4693
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jg-0004av-8F; Mon, 09 Aug 2021 13:27:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClc7-0003O3-TF; Sun, 08 Aug 2021 16:25:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3p6dxrjUzp8F6J00knFsit7oaZj79+crdu+9fVGy52o=; b=VHqKD6AwYqR0Erzm/SLeSTozfH
 2tmnJ1hgT19e2GOxcoP6UDeTvLL+Rxood58kp/T6etnB7QP/qMuomdrGaepDWRPoZs7IjL41K+3gV
 528a8HYMIC9jhLSCZgW+o0sw+CT1FPc0dCci1MY00OaRvSkQOh2zIXOpSRLR4z2U8JEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3p6dxrjUzp8F6J00knFsit7oaZj79+crdu+9fVGy52o=; b=l
 YPw9vo/08WImXEDeWyDjq/5ogo2j7VRUolTSS2PFemxjPCt+/2cNIJnzjKIB3Gr22KX2LV0DsMh50
 CFSUfO1EEjlMCQFgrmKPUKLlyi0v0NNeJgJIGgMnJyrEs0Hkj5LTAbFXxqQOSHAQybCZo1la/rll6
 6rjYxU9scFFSH3rI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClc5-00GyX0-OS; Sun, 08 Aug 2021 16:25:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DCC4E60F92;
 Sun,  8 Aug 2021 16:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439915;
 bh=Ohc/3heuGxLg0kv3NvHFDAfCusqeQ5RY2plc5dtqdq8=;
 h=From:To:Subject:Date:From;
 b=V5RCkUgAyQb6xImM0cY+ybB7FN3DiId8+ohpzyIXCEEfeCYrqQn8hQSslrzTF992u
 TFOFnDIF3jgzPACAo8vwqW4yK+3X/jQ3p1T/kvV1JGW4SCH1UB3BRojP1vxUfCvdQH
 NtsuTK4hEF5BxKfRYPwLZ86ncby4i5qz1bALQajKRRUh1N4Tu8lUDdZLrg8pWnLqp7
 E1XdIyl1CWlMENfcuLmedfbTMjOZg62oY5c4t9Ykd7sUOTspJKM5LaVTW53CtJEBCO
 PKvNxS7W63zN90tWf2HRXuOz/6gAhXS0kW7/Mlg0mB/IQnMyX0MTBcrvZCX2SA0MAy
 uuW28QvKI2mYQ==
Received: by pali.im (Postfix)
 id 6166413DC; Sun,  8 Aug 2021 18:25:12 +0200 (CEST)
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
Date: Sun,  8 Aug 2021 18:24:33 +0200
Message-Id: <20210808162453.1653-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
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
X-Headers-End: 1mClc5-00GyX0-OS
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:39 +0000
Subject: [Jfs-discussion] [RFC PATCH 00/20] fs: Remove usage of broken
 nls_utf8 and drop it
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

TW9kdWxlIG5sc191dGY4IGlzIGJyb2tlbiBpbiBzZXZlcmFsIHdheXMuIEl0IGRvZXMgbm90IHN1
cHBvcnQgKGZ1bGwpClVURi04LCBkZXNwaXRlIGl0cyBuYW1lLiBJdCBjYW5ub3QgaGFuZGxlIDQt
Ynl0ZSBVVEYtOCBzZXF1ZW5jZXMgYW5kCnRvbG93ZXIvdG91cHBlciB0YWJsZSBpcyBub3QgaW1w
bGVtZW50ZWQgYXQgYWxsLiBXaGljaCBtZWFucyB0aGF0IGl0IGlzCm5vdCBzdWl0YWJsZSBmb3Ig
dXNhZ2UgaW4gY2FzZS1pbnNlbnNpdGl2ZSBmaWxlc3lzdGVtcyBvciBVVEYtMTYKZmlsZXN5c3Rl
bXMgKGJlY2F1c2Ugb2YgZS5nLiBtaXNzaW5nIFVURi0xNiBzdXJyb2dhdGUgcGFpcnMgcHJvY2Vz
c2luZykuCgpUaGlzIGlzIFJGQyBwYXRjaCBzZXJpZXMgd2hpY2ggdW5pZnkgYW5kIGZpeCBpb2No
YXJzZXQ9dXRmOCBtb3VudApvcHRpb24gaW4gYWxsIGZzIGRyaXZlcnMgYW5kIGNvbnZlcnRzIGFs
bCByZW1haW5pbmcgZnMgZHJpdmVycyB0byB1c2UKdXRmOHNfdG9fdXRmMTZzKCksIHV0ZjE2c190
b191dGY4cygpLCB1dGY4X3RvX3V0ZjMyKCksIHV0ZjMyX3RvX3V0ZjgKZnVuY3Rpb25zIGZvciBp
bXBsZW1lbnRpbmcgVVRGLTggc3VwcG9ydCBpbnN0ZWFkIG9mIG5sc191dGY4LgoKU28gYXQgdGhl
IGVuZCBpdCBhbGxvd3MgdG8gY29tcGxldGVseSBkcm9wIHRoaXMgYnJva2VuIG5sc191dGY4IG1v
ZHVsZS4KCkZvciBtb3JlIGRldGFpbHMgbG9vayBhdCBlbWFpbCB0aHJlYWQgd2hlcmUgd2FzIGRp
c2N1c3NlZCBmcyB1bmlmaWNhdGlvbjoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZnNk
ZXZlbC8yMDIwMDEwMjIxMTg1NS5nZzYycjdqc2hwNzQyZDZpQHBhbGkvdC8jdQoKVGhpcyBwYXRj
aCBzZXJpZXMgaXMgbW9zdGx5IHVudGVzdGVkIGFuZCBwcmVzZW50ZWQgYXMgUkZDLiBQbGVhc2Ug
bGV0IG1lCmtub3cgd2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgaXQgYW5kIGlmIGlzIHRoZSBjb3Jy
ZWN0IHdheSBob3cgdG8gZml4CmJyb2tlbiBVVEYtOCBzdXBwb3J0IGluIGZzIGRyaXZlcnMuIEFz
IGV4cGxhaW5lZCBpbiBhYm92ZSBlbWFpbCB0aHJlYWQgSQp0aGluayBpdCBkb2VzIG5vdCBtYWtl
IHNlbnNlIHRvIHRyeSBmaXhpbmcgd2hvbGUgTkxTIGZyYW1ld29yayBhbmQgaXQgaXMKZWFzaWVy
IHRvIGp1c3QgZHJvcCB0aGlzIG5sc191dGY4IG1vZHVsZS4KCk5vdGU6IHRoaXMgcGF0Y2ggc2Vy
aWVzIGRvZXMgbm90IGFkZHJlc3MgVVRGLTggZmF0IGNhc2Utc2Vuc2l0aXZpdHkgaXNzdWU6Cmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWZzZGV2ZWwvMjAyMDAxMTkyMjE0NTUuYmFjN2Rj
NTVnNTZxMmw0ckBwYWxpLwoKUGFsaSBSb2jDoXIgKDIwKToKICBmYXQ6IEZpeCBpb2NoYXJzZXQ9
dXRmOCBtb3VudCBvcHRpb24KICBoZnNwbHVzOiBBZGQgaW9jaGFyc2V0PSBtb3VudCBvcHRpb24g
YXMgYWxpYXMgZm9yIG5scz0KICB1ZGY6IEZpeCBpb2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24K
ICBpc29mczogam9saWV0OiBGaXggaW9jaGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uCiAgbnRmczog
VW5kZXByZWNhdGUgaW9jaGFyc2V0PSBtb3VudCBvcHRpb24KICBudGZzOiBGaXggZXJyb3IgcHJv
Y2Vzc2luZyB3aGVuIGxvYWRfbmxzKCkgZmFpbHMKICBiZWZzOiBGaXggcHJpbnRpbmcgaW9jaGFy
c2V0PSBtb3VudCBvcHRpb24KICBiZWZzOiBSZW5hbWUgZW51bSB2YWx1ZSBPcHRfY2hhcnNldCB0
byBPcHRfaW9jaGFyc2V0IHRvIG1hdGNoIG1vdW50CiAgICBvcHRpb24KICBiZWZzOiBGaXggZXJy
b3IgcHJvY2Vzc2luZyB3aGVuIGxvYWRfbmxzKCkgZmFpbHMKICBiZWZzOiBBbGxvdyB0byB1c2Ug
bmF0aXZlIFVURi04IG1vZGUKICBoZnM6IEV4cGxpY2l0bHkgc2V0IGhzYi0+bmxzX2Rpc2sgd2hl
biBoc2ItPm5sc19pbyBpcyBzZXQKICBoZnM6IERvIG5vdCB1c2UgYnJva2VuIHV0ZjggTkxTIHRh
YmxlIGZvciBpb2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24KICBoZnNwbHVzOiBEbyBub3QgdXNl
IGJyb2tlbiB1dGY4IE5MUyB0YWJsZSBmb3IgaW9jaGFyc2V0PXV0ZjggbW91bnQKICAgIG9wdGlv
bgogIGpmczogUmVtb3ZlIGN1c3RvbSBpc284ODU5LTEgaW1wbGVtZW50YXRpb24KICBqZnM6IEZp
eCBidWZmZXIgb3ZlcmZsb3cgaW4gamZzX3N0cmZyb21VQ1NfbGUoKSBmdW5jdGlvbgogIGpmczog
RG8gbm90IHVzZSBicm9rZW4gdXRmOCBOTFMgdGFibGUgZm9yIGlvY2hhcnNldD11dGY4IG1vdW50
IG9wdGlvbgogIG50ZnM6IERvIG5vdCB1c2UgYnJva2VuIHV0ZjggTkxTIHRhYmxlIGZvciBpb2No
YXJzZXQ9dXRmOCBtb3VudCBvcHRpb24KICBjaWZzOiBEbyBub3QgdXNlIGJyb2tlbiB1dGY4IE5M
UyB0YWJsZSBmb3IgaW9jaGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uCiAgY2lmczogUmVtb3ZlIHVz
YWdlIG9mIGxvYWRfbmxzX2RlZmF1bHQoKSBjYWxscwogIG5sczogRHJvcCBicm9rZW4gbmxzX3V0
ZjggbW9kdWxlCgogZnMvYmVmcy9saW51eHZmcy5jICAgICAgICAgIHwgIDIyICsrKystLS0KIGZz
L2NpZnMvY2lmc191bmljb2RlLmMgICAgICB8IDEyOCArKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0KIGZzL2NpZnMvY2lmc191bmljb2RlLmggICAgICB8ICAgMiArLQogZnMvY2lm
cy9jaWZzZnMuYyAgICAgICAgICAgIHwgICAyICsKIGZzL2NpZnMvY2lmc3NtYi5jICAgICAgICAg
ICB8ICAgOCArLS0KIGZzL2NpZnMvY29ubmVjdC5jICAgICAgICAgICB8ICAgOCArKy0KIGZzL2Np
ZnMvZGZzX2NhY2hlLmMgICAgICAgICB8ICAyNCArKystLS0tCiBmcy9jaWZzL2Rpci5jICAgICAg
ICAgICAgICAgfCAgMjggKysrKysrLS0KIGZzL2NpZnMvc21iMnBkdS5jICAgICAgICAgICB8ICAx
NyArKy0tLQogZnMvY2lmcy93aW51Y2FzZS5jICAgICAgICAgIHwgIDE0ICsrLS0KIGZzL2ZhdC9L
Y29uZmlnICAgICAgICAgICAgICB8ICAxNSAtLS0tLQogZnMvZmF0L2Rpci5jICAgICAgICAgICAg
ICAgIHwgIDE3ICsrLS0tCiBmcy9mYXQvZmF0LmggICAgICAgICAgICAgICAgfCAgMjIgKysrKysr
KwogZnMvZmF0L2lub2RlLmMgICAgICAgICAgICAgIHwgIDI4ICsrKystLS0tCiBmcy9mYXQvbmFt
ZWlfdmZhdC5jICAgICAgICAgfCAgMjYgKysrKysrLS0KIGZzL2hmcy9zdXBlci5jICAgICAgICAg
ICAgICB8ICA2MiArKysrKysrKysrKysrKy0tLQogZnMvaGZzL3RyYW5zLmMgICAgICAgICAgICAg
IHwgIDYyICsrKysrKysrKy0tLS0tLS0tCiBmcy9oZnNwbHVzL2Rpci5jICAgICAgICAgICAgfCAg
IDYgKy0KIGZzL2hmc3BsdXMvb3B0aW9ucy5jICAgICAgICB8ICAzOSArKysrKystLS0tLQogZnMv
aGZzcGx1cy9zdXBlci5jICAgICAgICAgIHwgICA3ICstCiBmcy9oZnNwbHVzL3VuaWNvZGUuYyAg
ICAgICAgfCAgMzEgKysrKysrKystCiBmcy9oZnNwbHVzL3hhdHRyLmMgICAgICAgICAgfCAgMTQg
KystLQogZnMvaGZzcGx1cy94YXR0cl9zZWN1cml0eS5jIHwgICAzICstCiBmcy9pc29mcy9pbm9k
ZS5jICAgICAgICAgICAgfCAgMjcgKysrKy0tLS0KIGZzL2lzb2ZzL2lzb2ZzLmggICAgICAgICAg
ICB8ICAgMSAtCiBmcy9pc29mcy9qb2xpZXQuYyAgICAgICAgICAgfCAgIDQgKy0KIGZzL2pmcy9q
ZnNfZHRyZWUuYyAgICAgICAgICB8ICAxMyArKystCiBmcy9qZnMvamZzX3VuaWNvZGUuYyAgICAg
ICAgfCAgMzUgKysrKystLS0tLQogZnMvamZzL2pmc191bmljb2RlLmggICAgICAgIHwgICAyICst
CiBmcy9qZnMvc3VwZXIuYyAgICAgICAgICAgICAgfCAgMjkgKysrKysrLS0KIGZzL25scy9LY29u
ZmlnICAgICAgICAgICAgICB8ICAgOSAtLS0KIGZzL25scy9NYWtlZmlsZSAgICAgICAgICAgICB8
ICAgMSAtCiBmcy9ubHMvbmxzX3V0ZjguYyAgICAgICAgICAgfCAgNjcgLS0tLS0tLS0tLS0tLS0t
LS0tLQogZnMvbnRmcy9kaXIuYyAgICAgICAgICAgICAgIHwgICA2ICstCiBmcy9udGZzL2lub2Rl
LmMgICAgICAgICAgICAgfCAgIDUgKy0KIGZzL250ZnMvc3VwZXIuYyAgICAgICAgICAgICB8ICA2
MCArKysrKysrKy0tLS0tLS0tLQogZnMvbnRmcy91bmlzdHIuYyAgICAgICAgICAgIHwgIDI4ICsr
KysrKystCiBmcy91ZGYvc3VwZXIuYyAgICAgICAgICAgICAgfCAgNTAgKysrKysrLS0tLS0tLS0K
IGZzL3VkZi91ZGZfc2IuaCAgICAgICAgICAgICB8ICAgMiAtCiBmcy91ZGYvdW5pY29kZS5jICAg
ICAgICAgICAgfCAgIDQgKy0KIDQwIGZpbGVzIGNoYW5nZWQsIDUxMCBpbnNlcnRpb25zKCspLCA0
MTggZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191dGY4LmMKCi0t
IAoyLjIwLjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9q
ZnMtZGlzY3Vzc2lvbgo=
