Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4158387CE5F
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Mar 2024 14:53:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rl7zM-0002qK-Ly;
	Fri, 15 Mar 2024 13:52:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rl7zL-0002qE-BV
 for jfs-discussion@lists.sourceforge.net;
 Fri, 15 Mar 2024 13:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zUEC+cpHkmIQsm7OSX3kZTD8R0Ar9UdLJ5REZaa2bJM=; b=GoPZMVVnQ+0XBNanPxcybkflN3
 XetFCxxJj6lyxBJc+4TbOWvSKN720rFy+o8iZQDwCJ5X03UAGMBgCVGEN+Oi0kPf2kXOmPS+uYeOk
 XO22FddsCBFOiR6nmL9kjeLovpskEEhbwt6hTwBgiitg8+5f/7PcGlxgHIgb3ASDU5P8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zUEC+cpHkmIQsm7OSX3kZTD8R0Ar9UdLJ5REZaa2bJM=; b=bE4E50ngwz/Bgl24p6lLRbjmIR
 bHe0eZ5ydGpvdQXjQg5OcNbEDhXwwI2GBV6cAIwQu99XqjsN4oqL5zAtpCkwAxiFTDzqvTn91cRSP
 owDmyuWryAU7dHbTAI2EDYCBudGa1CrR+am3GPbOjbl4YWeEXD+vFB7fAhios7PUblFE=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rl7z9-0005yj-Ks for jfs-discussion@lists.sourceforge.net;
 Fri, 15 Mar 2024 13:52:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4C426CE1F79;
 Fri, 15 Mar 2024 13:52:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B09DAC433F1;
 Fri, 15 Mar 2024 13:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1710510750;
 bh=AwIVao3rL1Q0k95nqbmA9y6yqrp6LGbk8gB2bmRe7uc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kqzhkH+oA5Y2fdTLJi8P7w3/r/btamKmCo690KIn0ZIru45tU+mFtEtMiGSX5ypl3
 eag+OprokOmKCLgl2aoLS2XP8c22mUJCeYuhzqPDQKZKotfiaHFSMbXoHafhzQ0lUF
 b0ir/DnTenexQYigIBvpmNaNILaV6Ms5+c50uObeXes8h8ocxmea6QGAv9wWj1fKus
 iJ2l+PrwBcmk9hOfcK2YZhzxZsRpnlzO7bVQpYkBGQiqv2S9F6m15Cfcf8rnMFUoOh
 1fpt0GgXfkjKW4maiZuN4RnGAx7JVqk09IsKrg3GpmBhIfJ+InRsJWFbse65QceJTs
 JaRfYJRY7AatQ==
Date: Fri, 15 Mar 2024 14:52:24 +0100
To: Max Kellermann <max.kellermann@ionos.com>
Message-ID: <20240315-hasst-anmachen-4c9e89a56840@brauner>
References: <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
 <20231011170042.GA267994@mit.edu>
 <20231011172606.mztqyvclq6hq2qa2@quack3>
 <20231012142918.GB255452@mit.edu>
 <20231012144246.h3mklfe52gwacrr6@quack3>
 <28DSITL9912E1.2LSZUVTGTO52Q@mforney.org>
 <CAKPOu+910gjDp9Lk3sW=CmTM8j_FHEYyfH-kQKz-piRJHkQiDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKPOu+910gjDp9Lk3sW=CmTM8j_FHEYyfH-kQKz-piRJHkQiDw@mail.gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 14, 2024 at 02:08:04PM +0100, Max Kellermann wrote:
    > On Wed, Mar 13, 2024 at 9:39 PM Michael Forney <mforney@mforney.org>
   wrote: > > Turns out that symlinks are inheriting umask on my s [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [145.40.73.55 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rl7z9-0005yj-Ks
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
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Yang Xu <xuyang2018.jy@fujitsu.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Forney <mforney@mforney.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBNYXIgMTQsIDIwMjQgYXQgMDI6MDg6MDRQTSArMDEwMCwgTWF4IEtlbGxlcm1hbm4g
d3JvdGU6Cj4gT24gV2VkLCBNYXIgMTMsIDIwMjQgYXQgOTozOeKAr1BNIE1pY2hhZWwgRm9ybmV5
IDxtZm9ybmV5QG1mb3JuZXkub3JnPiB3cm90ZToKPiA+IFR1cm5zIG91dCB0aGF0IHN5bWxpbmtz
IGFyZSBpbmhlcml0aW5nIHVtYXNrIG9uIG15IHN5c3RlbSAod2hpY2gKPiA+IGhhcyBDT05GSUdf
RVhUNF9GU19QT1NJWF9BQ0w9bik6Cj4gPgo+ID4gJCB1bWFzayAwMjIKPiA+ICQgbG4gLXMgdGFy
Z2V0IHN5bWxpbmsKPiA+ICQgbHMgLWwgc3ltbGluawo+ID4gbHJ3eHIteHIteCAgICAxIG1pY2hh
ZWwgIG1pY2hhZWwgICAgICAgICAgIDYgTWFyIDEzIDEzOjI4IHN5bWxpbmsgLT4gdGFyZ2V0Cj4g
PiAkCj4gPgo+ID4gTG9va2luZyBhdCB0aGUgcmVmZXJlbmNlZCBmdW5jdGlvbnMsIHBvc2l4X2Fj
bF9jcmVhdGUoKSByZXR1cm5zCj4gPiBlYXJseSBiZWZvcmUgYXBwbHlpbmcgdW1hc2sgZm9yIHN5
bWxpbmtzLCBidXQgZXh0NF9pbml0X2FjbCgpIG5vdwo+ID4gYXBwbGllcyB0aGUgdW1hc2sgdW5j
b25kaXRpb25hbGx5Lgo+IAo+IEluZGVlZCwgSSBmb3Jnb3QgdG8gZXhjbHVkZSBzeW1saW5rcyBm
cm9tIHRoaXMgLSBzb3JyeSBmb3IgdGhlIGJyZWFrYWdlLgo+IAo+ID4gQWZ0ZXIgcmV2ZXJ0aW5n
IHRoaXMgY29tbWl0LCBpdCB3b3JrcyBjb3JyZWN0bHkuIEkgYW0gYWxzbyB1bmFibGUKPiA+IHRv
IHJlcHJvZHVjZSB0aGUgbWVudGlvbmVkIGlzc3VlIHdpdGggT19UTVBGSUxFIGFmdGVyIHJldmVy
dGluZyB0aGUKPiA+IGNvbW1pdC4gSXQgc2VlbXMgdGhhdCB0aGUgYnVnIHdhcyBmaXhlZCBwcm9w
ZXJseSBpbiBhYzY4MDBlMjc5YTIKPiA+ICgnZnM6IEFkZCBtaXNzaW5nIHVtYXNrIHN0cmlwIGlu
IHZmc190bXBmaWxlJyksIGFuZCBhbGwgYnJhbmNoZXMKPiA+IHRoYXQgaGF2ZSB0aGlzIGV4dDRf
aW5pdF9hY2wgcGF0Y2ggYWxyZWFkeSBoYWQgYWM2ODAwZTI3OWEyIGJhY2twb3J0ZWQuCj4gCj4g
SSBjYW4gcG9zdCBhIHBhdGNoIHRoYXQgYWRkcyB0aGUgbWlzc2luZyBjaGVjayBvciBhIHJldmVy
dCAtIHdoYXQgZG8KPiB0aGUgRlMgbWFpbnRhaW5lcnMgcHJlZmVyPwoKSWYgaXQgd29ya3MgY29y
cmVjdGx5IHdpdGggYSByZXZlcnQgd2Ugc2hvdWxkIHJlbW92ZSB0aGUgY29kZSByYXRoZXIKdGhh
biBhZGRpbmcgbW9yZSBjb2RlIHRvIGhhbmRsZSBhIHNwZWNpYWwgY2FzZS4KCj4gCj4gKFRoZXJl
IHdhcyBhIGJ1ZyB3aXRoIE9fVE1QRklMRSBpZ25vcmluZyB1bWFza3MgeWVhcnMgYWdvIC0gSSBm
aXJzdAo+IHBvc3RlZCB0aGUgcGF0Y2ggaW4gMjAxOCBvciBzbyAtIGJ1dCBieSB0aGUgdGltZSBt
eSBwYXRjaCBhY3R1YWxseSBnb3QKPiBtZXJnZWQsIHRoZSBidWcgaGFkIGFscmVhZHkgYmVlbiBm
aXhlZCBzb21ld2hlcmUgZWxzZSBJSVJDLikKClllYWgsIHdlIGZpeGVkIGl0IGEgd2hpbGUgYWdv
IGFuZCB0aGVuIEkgYWRkZWQgZ2VuZXJpYyBWRlMgbGV2ZWwgdW1hc2sKaGFuZGxpbmcgYnV0IFBP
U0lYIEFDTCBhcmUgaHVydGluZyB1cyBiZWNhdXNlIHRoZXkncmUgYSBtYXNzaXZlIGxheWVyaW5n
CnZpb2xhdGlvbiBvbiB0aGF0IGZyb250LgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1
c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
