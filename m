Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F54D656317
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMs-0001x4-10;
	Mon, 26 Dec 2022 14:22:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMo-0001wu-3W;
 Mon, 26 Dec 2022 14:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/ycN6Zivg5ZhjpVFylddVxxFXHE3ztsfZyZYvKuGAxE=; b=Q6rB7pQRqwf4TqhmffwQX2u663
 MiPu5425lzQyw1+tggK1JXqz5ZqNCWq2Z3h0fiYgZ4oJ3ak0jXYc3MNJi4xG6oSLnqUWetbz16Voc
 G7RqudVcD0BwDcaTPKjaGruKtnq3Ood9RyNhBUBzc6FcJzGD/OnhOBR/8QrULnnEn/ss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/ycN6Zivg5ZhjpVFylddVxxFXHE3ztsfZyZYvKuGAxE=; b=L
 ck0kmQK4CFaCCeJym9AWxCoF7wIutswWHjfQM87ChKc9m3xgpkGcepP9OOhT9tuWtPSh3SR+AiW1V
 v7mZ0LTEsxj3qdCMv5T9xXtrejxmPv6722Oy0yCLOkBhv9pjTP/LwtMR4FHe9aZQqF+y9iYG2Esj+
 ZMJlrdyp0HeLelaI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMk-0002Bs-Qj; Mon, 26 Dec 2022 14:22:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B732C60E9A;
 Mon, 26 Dec 2022 14:22:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFB62C433D2;
 Mon, 26 Dec 2022 14:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064523;
 bh=RE53Fciq2nRixBCsoy3+egocitH34STsez30iGbOyhc=;
 h=From:To:Subject:Date:From;
 b=HhvlJSnhDxEB2hW0pKagPKBpltkDOgH34p8DXvkq2ap8tamup3CfInSKrYghK+89Z
 FVh7d9NiilF5DA0ewfpzdBT67ag9zu0mwMy5tkrvWuPKKisesjm5cwDxpA23QrAAp+
 Un2hAExH3isoqv+J76Hnbt40z2gzMqyoePufWK8kqLUG10O1Lv5PXjDW/y/51Ml8CK
 kmDrSN/W8NbIbn7u8MfWpooCPgTDAPJat6mQ1FEWOCW/uTBHpAOoEsxXE2c1ENuTFI
 gY1UBZu2Vxj3Bo+eUbpOX1Tuv0lx9fSTXmu2hTUiGzHfI+zI1zboiY+b8DPNz4LbD5
 qfKHRgFB8GSQA==
Received: by pali.im (Postfix)
 id 03B949D7; Mon, 26 Dec 2022 15:21:59 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:32 +0100
Message-Id: <20221226142150.13324-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Module nls_utf8 is broken in several ways. It does not
 support
 (full) UTF-8, despite its name. It cannot handle 4-byte UTF-8 sequences and
 tolower/toupper table is not implemented at all. Which means [...] 
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
X-Headers-End: 1p9oMk-0002Bs-Qj
Subject: [Jfs-discussion] [RFC PATCH v2 00/18] fs: Remove usage of broken
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
c2luZykuCgpUaGlzIGlzIFJGQyB2MiBwYXRjaCBzZXJpZXMgd2hpY2ggdW5pZnkgYW5kIGZpeCBp
b2NoYXJzZXQ9dXRmOCBtb3VudApvcHRpb24gaW4gYWxsIGZzIGRyaXZlcnMgYW5kIGNvbnZlcnRz
IGFsbCByZW1haW5pbmcgZnMgZHJpdmVycyB0byB1c2UKdXRmOHNfdG9fdXRmMTZzKCksIHV0ZjE2
c190b191dGY4cygpLCB1dGY4X3RvX3V0ZjMyKCksIHV0ZjMyX3RvX3V0ZjgKZnVuY3Rpb25zIGZv
ciBpbXBsZW1lbnRpbmcgVVRGLTggc3VwcG9ydCBpbnN0ZWFkIG9mIG5sc191dGY4LgoKU28gYXQg
dGhlIGVuZCBpdCBhbGxvd3MgdG8gY29tcGxldGVseSBkcm9wIHRoaXMgYnJva2VuIG5sc191dGY4
IG1vZHVsZS4KCkZvciBtb3JlIGRldGFpbHMgbG9vayBhdCBlbWFpbCB0aHJlYWQgd2hlcmUgd2Fz
IGRpc2N1c3NlZCBmcyB1bmlmaWNhdGlvbjoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
ZnNkZXZlbC8yMDIwMDEwMjIxMTg1NS5nZzYycjdqc2hwNzQyZDZpQHBhbGkvdC8jdQoKVGhpcyBw
YXRjaCBzZXJpZXMgaXMgbW9zdGx5IHVudGVzdGVkIGFuZCBwcmVzZW50ZWQgYXMgUkZDLiBQbGVh
c2UgbGV0IG1lCmtub3cgd2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgaXQgYW5kIGlmIGlzIHRoZSBj
b3JyZWN0IHdheSBob3cgdG8gZml4CmJyb2tlbiBVVEYtOCBzdXBwb3J0IGluIGZzIGRyaXZlcnMu
IEFzIGV4cGxhaW5lZCBpbiBhYm92ZSBlbWFpbCB0aHJlYWQgSQp0aGluayBpdCBkb2VzIG5vdCBt
YWtlIHNlbnNlIHRvIHRyeSBmaXhpbmcgd2hvbGUgTkxTIGZyYW1ld29yayBhbmQgaXQgaXMKZWFz
aWVyIHRvIGp1c3QgZHJvcCB0aGlzIG5sc191dGY4IG1vZHVsZS4KCk5vdGU6IHRoaXMgcGF0Y2gg
c2VyaWVzIGRvZXMgbm90IGFkZHJlc3MgVVRGLTggZmF0IGNhc2Utc2Vuc2l0aXZpdHkgaXNzdWU6
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWZzZGV2ZWwvMjAyMDAxMTkyMjE0NTUuYmFj
N2RjNTVnNTZxMmw0ckBwYWxpLwoKQ2hhbmdlcyBzaW5jZSBSRkMgdjE6CiogRHJvcHBlZCBhbHJl
YWR5IG1lcmdlZCB1ZGYgYW5kIGlzb2ZzIHBhdGNoZXMKKiBBZGRyZXNzZWQgcmV2aWV3IGNvbW1l
bnRzOgogIC0gdXBkYXRlZCBkb2N1bWVudGF0aW9uCiAgLSB1c2FnZSBvZiBzZXFfcHV0cwogIC0g
c29tZSBjb2RlIG1vdmVkIHRvIGxvY2FsIHZhcmlhYmxlcwogIC0gdXNhZ2Ugb2YgdHJ1ZS9mYWxz
ZSBpbnN0ZWFkIG9mIDEvMAogIC0gcmViYXNlZCBvbiB0b3Agb2YgbWFzdGVyIGJyYW5jaAoKTGlu
ayB0byBSRkMgdjE6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWZzZGV2ZWwvMjAyMTA4
MDgxNjI0NTMuMTY1My0xLXBhbGlAa2VybmVsLm9yZy8KClBhbGkgUm9ow6FyICgxOCk6CiAgZmF0
OiBGaXggaW9jaGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uCiAgaGZzcGx1czogQWRkIGlvY2hhcnNl
dD0gbW91bnQgb3B0aW9uIGFzIGFsaWFzIGZvciBubHM9CiAgbnRmczogVW5kZXByZWNhdGUgaW9j
aGFyc2V0PSBtb3VudCBvcHRpb24KICBudGZzOiBGaXggZXJyb3IgcHJvY2Vzc2luZyB3aGVuIGxv
YWRfbmxzKCkgZmFpbHMKICBiZWZzOiBGaXggcHJpbnRpbmcgaW9jaGFyc2V0PSBtb3VudCBvcHRp
b24KICBiZWZzOiBSZW5hbWUgZW51bSB2YWx1ZSBPcHRfY2hhcnNldCB0byBPcHRfaW9jaGFyc2V0
IHRvIG1hdGNoIG1vdW50CiAgICBvcHRpb24KICBiZWZzOiBGaXggZXJyb3IgcHJvY2Vzc2luZyB3
aGVuIGxvYWRfbmxzKCkgZmFpbHMKICBiZWZzOiBBbGxvdyB0byB1c2UgbmF0aXZlIFVURi04IG1v
ZGUKICBoZnM6IEV4cGxpY2l0bHkgc2V0IGhzYi0+bmxzX2Rpc2sgd2hlbiBoc2ItPm5sc19pbyBp
cyBzZXQKICBoZnM6IERvIG5vdCB1c2UgYnJva2VuIHV0ZjggTkxTIHRhYmxlIGZvciBpb2NoYXJz
ZXQ9dXRmOCBtb3VudCBvcHRpb24KICBoZnNwbHVzOiBEbyBub3QgdXNlIGJyb2tlbiB1dGY4IE5M
UyB0YWJsZSBmb3IgaW9jaGFyc2V0PXV0ZjggbW91bnQKICAgIG9wdGlvbgogIGpmczogUmVtb3Zl
IGN1c3RvbSBpc284ODU5LTEgaW1wbGVtZW50YXRpb24KICBqZnM6IEZpeCBidWZmZXIgb3ZlcmZs
b3cgaW4gamZzX3N0cmZyb21VQ1NfbGUoKSBmdW5jdGlvbgogIGpmczogRG8gbm90IHVzZSBicm9r
ZW4gdXRmOCBOTFMgdGFibGUgZm9yIGlvY2hhcnNldD11dGY4IG1vdW50IG9wdGlvbgogIG50ZnM6
IERvIG5vdCB1c2UgYnJva2VuIHV0ZjggTkxTIHRhYmxlIGZvciBpb2NoYXJzZXQ9dXRmOCBtb3Vu
dCBvcHRpb24KICBjaWZzOiBEbyBub3QgdXNlIGJyb2tlbiB1dGY4IE5MUyB0YWJsZSBmb3IgaW9j
aGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uCiAgY2lmczogUmVtb3ZlIHVzYWdlIG9mIGxvYWRfbmxz
X2RlZmF1bHQoKSBjYWxscwogIG5sczogRHJvcCBicm9rZW4gbmxzX3V0ZjggbW9kdWxlCgogRG9j
dW1lbnRhdGlvbi9maWxlc3lzdGVtcy9oZnNwbHVzLnJzdCB8ICAgMyArCiBEb2N1bWVudGF0aW9u
L2ZpbGVzeXN0ZW1zL250ZnMucnN0ICAgIHwgICA1ICstCiBEb2N1bWVudGF0aW9uL2ZpbGVzeXN0
ZW1zL3ZmYXQucnN0ICAgIHwgIDEzICstLQogZnMvYmVmcy9saW51eHZmcy5jICAgICAgICAgICAg
ICAgICAgICB8ICAyNCArKystLQogZnMvY2lmcy9jaWZzX3VuaWNvZGUuYyAgICAgICAgICAgICAg
ICB8IDEyOCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLQogZnMvY2lmcy9jaWZzX3VuaWNvZGUu
aCAgICAgICAgICAgICAgICB8ICAgMiArLQogZnMvY2lmcy9jaWZzZnMuYyAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMiArCiBmcy9jaWZzL2NpZnNzbWIuYyAgICAgICAgICAgICAgICAgICAgIHwg
ICA4ICstCiBmcy9jaWZzL2Nvbm5lY3QuYyAgICAgICAgICAgICAgICAgICAgIHwgICA4ICstCiBm
cy9jaWZzL2Rmc19jYWNoZS5jICAgICAgICAgICAgICAgICAgIHwgIDI0ICsrLS0tCiBmcy9jaWZz
L2Rpci5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDI4ICsrKystLQogZnMvY2lmcy9zbWIy
cGR1LmMgICAgICAgICAgICAgICAgICAgICB8ICAxOCArLS0tCiBmcy9jaWZzL3dpbnVjYXNlLmMg
ICAgICAgICAgICAgICAgICAgIHwgIDE0ICsrLQogZnMvZmF0L0tjb25maWcgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAxOSArLS0tCiBmcy9mYXQvZGlyLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDE3ICsrLS0KIGZzL2ZhdC9mYXQuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
MjIgKysrKysKIGZzL2ZhdC9pbm9kZS5jICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjggKysr
LS0tCiBmcy9mYXQvbmFtZWlfdmZhdC5jICAgICAgICAgICAgICAgICAgIHwgIDI2ICsrKystLQog
ZnMvaGZzL3N1cGVyLmMgICAgICAgICAgICAgICAgICAgICAgICB8ICA2MiArKysrKysrKysrKy0t
CiBmcy9oZnMvdHJhbnMuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgIDYyICsrKysrKystLS0t
LS0KIGZzL2hmc3BsdXMvZGlyLmMgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKy0KIGZzL2hm
c3BsdXMvb3B0aW9ucy5jICAgICAgICAgICAgICAgICAgfCAgMzkgKysrKystLS0KIGZzL2hmc3Bs
dXMvc3VwZXIuYyAgICAgICAgICAgICAgICAgICAgfCAgIDcgKy0KIGZzL2hmc3BsdXMvdW5pY29k
ZS5jICAgICAgICAgICAgICAgICAgfCAgMzEgKysrKysrLQogZnMvaGZzcGx1cy94YXR0ci5jICAg
ICAgICAgICAgICAgICAgICB8ICAyMCArKy0tCiBmcy9oZnNwbHVzL3hhdHRyX3NlY3VyaXR5LmMg
ICAgICAgICAgIHwgICA2ICstCiBmcy9qZnMvamZzX2R0cmVlLmMgICAgICAgICAgICAgICAgICAg
IHwgIDEzICsrLQogZnMvamZzL2pmc191bmljb2RlLmMgICAgICAgICAgICAgICAgICB8ICAzNSAr
KystLS0tCiBmcy9qZnMvamZzX3VuaWNvZGUuaCAgICAgICAgICAgICAgICAgIHwgICAyICstCiBm
cy9qZnMvc3VwZXIuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgIDI5ICsrKystLQogZnMvbmxz
L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOSAtLQogZnMvbmxzL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSAtCiBmcy9ubHMvbmxzX3V0ZjguYyAgICAgICAg
ICAgICAgICAgICAgIHwgIDY3IC0tLS0tLS0tLS0tLS0tCiBmcy9udGZzL2Rpci5jICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICA2ICstCiBmcy9udGZzL2lub2RlLmMgICAgICAgICAgICAgICAg
ICAgICAgIHwgICA1ICstCiBmcy9udGZzL3N1cGVyLmMgICAgICAgICAgICAgICAgICAgICAgIHwg
IDYwICsrKysrKy0tLS0tLQogZnMvbnRmcy91bmlzdHIuYyAgICAgICAgICAgICAgICAgICAgICB8
ICAyOSArKysrKy0KIDM3IGZpbGVzIGNoYW5nZWQsIDQ5MyBpbnNlcnRpb25zKCspLCAzODYgZGVs
ZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191dGY4LmMKCi0tIAoyLjIw
LjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZz
LWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlz
Y3Vzc2lvbgo=
