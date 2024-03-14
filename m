Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4852987BDDD
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 Mar 2024 14:39:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rklIP-0001ou-MH;
	Thu, 14 Mar 2024 13:38:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1rklIM-0001oj-K3
 for jfs-discussion@lists.sourceforge.net;
 Thu, 14 Mar 2024 13:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7F+GMfmTIeHQjgM+fN0XugEriGVcEET+uvRlxfdDDkg=; b=L/Qcnkd/vY+dZXMr76ZaPDp/G1
 9+XX80pdspbop/qqCIpPa1gIoA9/FUkuktvy1jN+ZQUAtfWKVowo6Wdcbz+BU8xBaX2Zt9HpFSOUc
 3mF+HvHfcRCj0dk7m0OMEfY2uIAZAUHToEdvIPO2xwNi6io0eKMJ00/Tt6XdEN5DEQK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7F+GMfmTIeHQjgM+fN0XugEriGVcEET+uvRlxfdDDkg=; b=a6+hVN8OPcj7NEJ3wWJpT5pGf6
 f7Y1A8yCL1kxQZE9pj/NRzA3k/kalxLuMy+A5mcus6EZOthMj81LcH0Tf71h9FuqAZQWQ2Ko3awVZ
 dWFieiSvIhTbIOCsG6eWYP/uVApn3DzmgK/vkXLw/xZ7dyKML4NaLHwV47CmjhJIArfA=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rklIC-00005c-6Y for jfs-discussion@lists.sourceforge.net;
 Thu, 14 Mar 2024 13:38:54 +0000
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-513d3746950so510882e87.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 14 Mar 2024 06:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1710423523; x=1711028323; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7F+GMfmTIeHQjgM+fN0XugEriGVcEET+uvRlxfdDDkg=;
 b=DEanbcV2tDJzRq70P9s7odAdg7saJixzd8lvNYr95DelzcFVcRgJC2aeAE4XDDkqXs
 qYu26UdeqX/lXM4PfKezkq1AL6u4cQyKce+rYf/lMYr5VJ7lDXI//1U1joIhvk81MAFw
 2V3W83KfXA2BXSCzrzmBRUebpE8/OFSnvUyF9Zu4uUJOo/J2Ixm00QOI746J6F7QKgwV
 gjUCRYkFCAJQwcBZiBDB5QIiBdGKa3AHLgb7QD6x36Rvk4dTvEbJKWHNDJ/SgMDdSjt5
 6uiYsT/Zdw/24zYmUm4HWr5mheb+koXJd1SMq0cpB/I9Y5JKgEd+t8f+BZyA1C6xfTrk
 Y5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710423523; x=1711028323;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7F+GMfmTIeHQjgM+fN0XugEriGVcEET+uvRlxfdDDkg=;
 b=Z1cmC3ZCpI0VzdjGqaCSmfl0Zqq9B+d1aF4NN/Y+Wa2wPGc06jVnjlu9zGylhelKxB
 zB6jiEEcuJAqeg0H+TBtQ3ybCW1OIPn3bxJU+yDsd6t9lEz+JRxMlH4AVgsImZvIlnwM
 kfiAst5IM7Scy4EltAhxem4YbhSRUuzpBiu/ZiAz7XLujFDIdxC6fg7A9lkKGOX0SscL
 ekjvM8UyyeaGz+KxfUImixLrMNK//D/sxmRqTUKJTblQTgLOkWj1IJS7Cr+ZV7aVm8ad
 UcFfdAji+FQceSn7au/BU63i5a1eo0UxpJQisb+0SuNOphNO4gYYCSP2WWaegqxUxh46
 haOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU005A/HW+bKFs5fQ3xEjeIdPe0bUdmLe+Z9RB+uJmj824yb96mcvWMO2mJ5kZoF9HlEuQdCDCdCGRsK8uBlL4ikdKGCkXHO1DztSUCoj7sSIkU/1Y=
X-Gm-Message-State: AOJu0YzsxjtNJj9UD6RSIR1oR0woNbnajUnqr1MSWfqQZfxrPx2wVtLs
 ea3lVpkBtViqyvxAS/TPAaD6n0QUSh7m+BgBqFixr7X/CjuAiBinTepEkSwf0evuOjujm9Lhsi8
 CcLRS+zedXJEAvvR/UL0EtOr/J9QwXAYPqL1Aegkp3flvUl2U
X-Google-Smtp-Source: AGHT+IFHtrfJtNBtI2EsrPtjKBAkxhfSnsboFEe2tmEPRF+rDfTqUN6uL/var8SH6nCXb1/uJK+v42k/DM67/PYhulU=
X-Received: by 2002:a2e:be90:0:b0:2d4:6aba:f1a3 with SMTP id
 a16-20020a2ebe90000000b002d46abaf1a3mr1474815ljr.6.1710421695825; Thu, 14 Mar
 2024 06:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
 <20231011170042.GA267994@mit.edu> <20231011172606.mztqyvclq6hq2qa2@quack3>
 <20231012142918.GB255452@mit.edu> <20231012144246.h3mklfe52gwacrr6@quack3>
 <28DSITL9912E1.2LSZUVTGTO52Q@mforney.org>
In-Reply-To: <28DSITL9912E1.2LSZUVTGTO52Q@mforney.org>
Date: Thu, 14 Mar 2024 14:08:04 +0100
Message-ID: <CAKPOu+910gjDp9Lk3sW=CmTM8j_FHEYyfH-kQKz-piRJHkQiDw@mail.gmail.com>
To: Michael Forney <mforney@mforney.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 13, 2024 at 9:39 PM Michael Forney <mforney@mforney.org>
    wrote: > Turns out that symlinks are inheriting umask on my system (which
    > has CONFIG_EXT4_FS_POSIX_ACL=n): > > $ umask 022 > $ [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.51 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rklIC-00005c-6Y
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
From: Max Kellermann via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Max Kellermann <max.kellermann@ionos.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 linux-ext4@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Yang Xu <xuyang2018.jy@fujitsu.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBNYXIgMTMsIDIwMjQgYXQgOTozOeKAr1BNIE1pY2hhZWwgRm9ybmV5IDxtZm9ybmV5
QG1mb3JuZXkub3JnPiB3cm90ZToKPiBUdXJucyBvdXQgdGhhdCBzeW1saW5rcyBhcmUgaW5oZXJp
dGluZyB1bWFzayBvbiBteSBzeXN0ZW0gKHdoaWNoCj4gaGFzIENPTkZJR19FWFQ0X0ZTX1BPU0lY
X0FDTD1uKToKPgo+ICQgdW1hc2sgMDIyCj4gJCBsbiAtcyB0YXJnZXQgc3ltbGluawo+ICQgbHMg
LWwgc3ltbGluawo+IGxyd3hyLXhyLXggICAgMSBtaWNoYWVsICBtaWNoYWVsICAgICAgICAgICA2
IE1hciAxMyAxMzoyOCBzeW1saW5rIC0+IHRhcmdldAo+ICQKPgo+IExvb2tpbmcgYXQgdGhlIHJl
ZmVyZW5jZWQgZnVuY3Rpb25zLCBwb3NpeF9hY2xfY3JlYXRlKCkgcmV0dXJucwo+IGVhcmx5IGJl
Zm9yZSBhcHBseWluZyB1bWFzayBmb3Igc3ltbGlua3MsIGJ1dCBleHQ0X2luaXRfYWNsKCkgbm93
Cj4gYXBwbGllcyB0aGUgdW1hc2sgdW5jb25kaXRpb25hbGx5LgoKSW5kZWVkLCBJIGZvcmdvdCB0
byBleGNsdWRlIHN5bWxpbmtzIGZyb20gdGhpcyAtIHNvcnJ5IGZvciB0aGUgYnJlYWthZ2UuCgo+
IEFmdGVyIHJldmVydGluZyB0aGlzIGNvbW1pdCwgaXQgd29ya3MgY29ycmVjdGx5LiBJIGFtIGFs
c28gdW5hYmxlCj4gdG8gcmVwcm9kdWNlIHRoZSBtZW50aW9uZWQgaXNzdWUgd2l0aCBPX1RNUEZJ
TEUgYWZ0ZXIgcmV2ZXJ0aW5nIHRoZQo+IGNvbW1pdC4gSXQgc2VlbXMgdGhhdCB0aGUgYnVnIHdh
cyBmaXhlZCBwcm9wZXJseSBpbiBhYzY4MDBlMjc5YTIKPiAoJ2ZzOiBBZGQgbWlzc2luZyB1bWFz
ayBzdHJpcCBpbiB2ZnNfdG1wZmlsZScpLCBhbmQgYWxsIGJyYW5jaGVzCj4gdGhhdCBoYXZlIHRo
aXMgZXh0NF9pbml0X2FjbCBwYXRjaCBhbHJlYWR5IGhhZCBhYzY4MDBlMjc5YTIgYmFja3BvcnRl
ZC4KCkkgY2FuIHBvc3QgYSBwYXRjaCB0aGF0IGFkZHMgdGhlIG1pc3NpbmcgY2hlY2sgb3IgYSBy
ZXZlcnQgLSB3aGF0IGRvCnRoZSBGUyBtYWludGFpbmVycyBwcmVmZXI/CgooVGhlcmUgd2FzIGEg
YnVnIHdpdGggT19UTVBGSUxFIGlnbm9yaW5nIHVtYXNrcyB5ZWFycyBhZ28gLSBJIGZpcnN0CnBv
c3RlZCB0aGUgcGF0Y2ggaW4gMjAxOCBvciBzbyAtIGJ1dCBieSB0aGUgdGltZSBteSBwYXRjaCBh
Y3R1YWxseSBnb3QKbWVyZ2VkLCB0aGUgYnVnIGhhZCBhbHJlYWR5IGJlZW4gZml4ZWQgc29tZXdo
ZXJlIGVsc2UgSUlSQy4pCgpNYXgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25A
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
