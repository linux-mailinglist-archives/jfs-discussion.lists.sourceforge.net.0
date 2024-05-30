Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CCD8D4CC5
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 May 2024 15:30:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sCfqZ-0002TU-9k;
	Thu, 30 May 2024 13:29:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1sCfqX-0002TN-Qt
 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 May 2024 13:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VGr470UzYPkb1JrCxKxwFe0Io6yxwP6cL+xsfiNCuy8=; b=W4PwledYqQL4ZUa+hGjmu9jVxV
 8O82f0AA2J/RVsJLCDvwH2YUNZ+dypT5G0Ko06AtDSk2O8m6gIUaGcJ/yfd+lRIKwKFh0Nl3Bk/qP
 VsRwteM/euPICxFtvg9hiiww+pJfhlYZNZ0tJ8XkmJrCT6VrIF1e2OWv7HXzGs7ArtcU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VGr470UzYPkb1JrCxKxwFe0Io6yxwP6cL+xsfiNCuy8=; b=g6679PaeuDafj6kdjNsboFK2Qc
 ZB7DKKL6Xjq3aw4GAbPIxm7qYvpi0F14IMR3+/NzKxON+pbp/MwpgAWNKt4ta2JR+yh+omlLFH7PH
 fgArQsJvlFxgZgpzPH+Pl4j5bvDkokAo1MFOrZk41St4mipHnzERD47UhwBgAeiCT5b4=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sCfqX-000707-5R for jfs-discussion@lists.sourceforge.net;
 Thu, 30 May 2024 13:29:33 +0000
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-1f4a0050b9aso7354975ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 30 May 2024 06:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717075762; x=1717680562; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VGr470UzYPkb1JrCxKxwFe0Io6yxwP6cL+xsfiNCuy8=;
 b=ZpdMLjV6G3urWcODjRiFquq+RLrGr7g9ozk3j/tdqEY0Dn3pLlN6x5wjyI15FkZvVA
 y8umEqMQ+aV8latjgvFgXfo3k7MmWCwvRmbUecSFKcf8VOopVldzjF+ipELcfl4AAcsr
 IuhZR8W728PYFUo06gNBjoFJz+3TweoiJPOfm5C/NFcWeCAcqpP0yK6Hhh2Xg2nIGINH
 cZ+2Je6wohgG+2/oHngi45A2WscX39gzFdnVmjn5Q5LRFXPgMTCfU49tNtg7mvqaZ9EE
 FU+Y5ALc0cq71MgVNVJQdIDAYAuaUxKC5kyiy8pRc/fTUqutFtHX64BmqLf7zktRFxcw
 Ky5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717075762; x=1717680562;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VGr470UzYPkb1JrCxKxwFe0Io6yxwP6cL+xsfiNCuy8=;
 b=Va/79FIf3RhyotvRFpel6c6pjws1cKB6XcxemK+w7XAAkXXi8Ab5WDi2xcmHyyMAtp
 QC38xwipM7mfjeE0iIEog+Z31JABDYx7c+x3v2gHmCX0jSvtqjgRdGQXX5u/4YFMaOgh
 PSpQbkdl3gbLYu3kv3NKVLkTe1Z95lZJWLzxb9j7gtwFiKkVkt/r8drL17NcndhZIeTG
 jW6Q36ljz/hTTtV//WVkMwLC/4UajFMe30xf9D9R/urDuzdAH5hBPr1qnzEOFRyHIqw6
 w8X0WzNbwwjphkZcgaBTYleR+ez35KC6tiMbkP+aU74v7UwareL4k+VAD1Sh69oFbMZU
 WV6g==
X-Gm-Message-State: AOJu0YyHqmr+ODCRSyX1UM+/Bg53MuXvQQqgjwWQZ9Kpb1nE7Z9EVkfN
 Y3ITs5jpr72L5MmGk/fW2VgzOz65BBap/NpIP1FP/R5e/1ta3SWT
X-Google-Smtp-Source: AGHT+IEixQWbhvzSd/hZ6dk/nquxqg9JFFgGeXvGpsSGxOeqTYTvD5Vjy9hGuOLgVfoYdl5Rz7bOHA==
X-Received: by 2002:a17:903:32c2:b0:1e2:9aa7:fd21 with SMTP id
 d9443c01a7336-1f619934e5amr21391285ad.54.1717075761592; 
 Thu, 30 May 2024 06:29:21 -0700 (PDT)
Received: from localhost.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1f627aedb2asm5825305ad.84.2024.05.30.06.29.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 May 2024 06:29:21 -0700 (PDT)
To: dave.kleikamp@oracle.com,
	shaggy@kernel.org
Date: Thu, 30 May 2024 22:28:09 +0900
Message-Id: <20240530132809.4388-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240426034156.52928-1-aha310510@gmail.com>
References: <20240426034156.52928-1-aha310510@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > > Matthew Wilcox wrote: > > This is not a good commit message.
    > > > > +   if(agno >= MAXAG || agno < 0) > > > > Please follow normal kernel
    whitespace rules -- one space between 'if' > > and the o [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.214.171 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [209.85.214.171 listed in bl.score.senderscore.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [aha310510[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.214.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.171 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sCfqX-000707-5R
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
From: Jeongjun Park via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jeongjun Park <aha310510@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, Jeongjun Park <aha310510@gmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Pgo+IE1hdHRoZXcgV2lsY294IHdyb3RlOgo+ID4gVGhpcyBpcyBub3QgYSBnb29kIGNvbW1pdCBt
ZXNzYWdlLgo+Cj4gPiA+ICsgwqAgaWYoYWdubyA+PSBNQVhBRyB8fCBhZ25vIDwgMCkKPiA+Cj4g
PiBQbGVhc2UgZm9sbG93IG5vcm1hbCBrZXJuZWwgd2hpdGVzcGFjZSBydWxlcyAtLSBvbmUgc3Bh
Y2UgYmV0d2VlbiAnaWYnCj4gPiBhbmQgdGhlIG9wZW4gcGFyZW4uCj4KPiBIYXMgY29uZmlybWVk
LiBUaGlzIGlzIGEgcGF0Y2ggdGhhdCByZS1lZGl0ZWQgdGhlIHJlbGV2YW50IHBhcnQgdG8KPiBj
b21wbHkgd2l0aCB0aGUgcnVsZXMuCj4KPiBUaGFua3MuCj4KCkkgaGF2ZSBqdXN0IGRpc2NvdmVy
ZWQgdGhhdCB0aGUgcGF0Y2ggSSBzZW50IGxhc3QgdGltZSBoYXMgYmVlbiBsZWZ0IAp1bmF0dGVu
ZGVkLiBJdCBhcHBlYXJzIHRoYXQgdGhlIHZ1bG5lcmFiaWxpdHkgY29udGludWVzIHRvIG9jY3Vy
IGluIAp2ZXJzaW9uIDYuMTAuMC1yYzEuIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBpZiB5b3UgY291
bGQgcmV2aWV3IHRoZSBwYXRjaAphbmQgbGV0IG1lIGtub3cgd2hhdCBtaWdodCBiZSB3cm9uZyB3
aXRoIGl0LgoKUmVnYXJkcwoKUmVwb3J0ZWQtYnk6IHN5emJvdCsyNDFjODE1YmRhNTIxOTgyY2I0
OUBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCkZpeGVzOiAxZGExNzdlNGMzZjQgKCJMaW51eC0y
LjYuMTItcmMyIikKU2lnbmVkLW9mZi1ieTogSmVvbmdqdW4gUGFyayA8YWhhMzEwNTEwQGdtYWls
LmNvbT4KLS0tCiBmcy9qZnMvamZzX2ltYXAuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9mcy9qZnMvamZzX2lt
YXAuYyBiL2ZzL2pmcy9qZnNfaW1hcC5jCmluZGV4IDJlYzM1ODg5YWQyNC4uMTQwN2ZlY2NiYzJk
IDEwMDY0NAotLS0gYS9mcy9qZnMvamZzX2ltYXAuYworKysgYi9mcy9qZnMvamZzX2ltYXAuYwpA
QCAtMjkwLDcgKzI5MCw3IEBAIGludCBkaVN5bmMoc3RydWN0IGlub2RlICppcGltYXApCiBpbnQg
ZGlSZWFkKHN0cnVjdCBpbm9kZSAqaXApCiB7CiAJc3RydWN0IGpmc19zYl9pbmZvICpzYmkgPSBK
RlNfU0JJKGlwLT5pX3NiKTsKLQlpbnQgaWFnbm8sIGlubywgZXh0bm8sIHJjOworCWludCBpYWdu
bywgaW5vLCBleHRubywgcmMsIGFnbm87CiAJc3RydWN0IGlub2RlICppcGltYXA7CiAJc3RydWN0
IGRpbm9kZSAqZHA7CiAJc3RydWN0IGlhZyAqaWFncDsKQEAgLTMzOSw4ICszMzksMTEgQEAgaW50
IGRpUmVhZChzdHJ1Y3QgaW5vZGUgKmlwKQogCiAJLyogZ2V0IHRoZSBhZyBmb3IgdGhlIGlhZyAq
LwogCWFnc3RhcnQgPSBsZTY0X3RvX2NwdShpYWdwLT5hZ3N0YXJ0KTsKKwlhZ25vID0gQkxLVE9B
RyhhZ3N0YXJ0LCBKRlNfU0JJKGlwLT5pX3NiKSk7CiAKIAlyZWxlYXNlX21ldGFwYWdlKG1wKTsK
KwlpZiAoYWdubyA+PSBNQVhBRyB8fCBhZ25vIDwgMCkKKwkJcmV0dXJuIC1FSU87CiAKIAlyZWxf
aW5vZGUgPSAoaW5vICYgKElOT1NQRVJQQUdFIC0gMSkpOwogCXBhZ2VubyA9IGJsa25vID4+IHNi
aS0+bDJuYnBlcnBhZ2U7Ci0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
