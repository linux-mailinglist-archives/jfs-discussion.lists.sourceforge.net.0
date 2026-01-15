Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B79D28FA1
	for <lists+jfs-discussion@lfdr.de>; Thu, 15 Jan 2026 23:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j6FsF31eTs3veyfp6m79IEzNppxsMw3phQ3xof7+KLU=; b=RkYppR08mIJ49Adcjvwl/KURZt
	8eCnzYf6kL/rJTp0MafhphPY+Pg+m+z8uPJ2iQkewiYwKt3qruag6Nze0Y5fukI19ze1JddSTGuXg
	jtuvjVrrCgNtD34iT8zftHYLtsjhT2tMmXtn5aRvbriFt/l9bdRkRr6PxLFsscme0nIs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vgVeq-0006em-6g;
	Thu, 15 Jan 2026 22:17:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@fromorbit.com>) id 1vgVeo-0006eW-R7
 for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 22:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9qNaS/mHG0CWRhBXyo18LMgHGDC++HAHg2FdEUDjFsI=; b=VoVYEyLGmBWysrrKgetZ9UvkQH
 2nbPmXa47sW0xs++HSc2yZ0bk1NuPq3k+66wqZOKi51m2X1x+uMJZN6Mv6aPrqUVpd0SN518kshqL
 Cp1zHP5IxJ9/Y1vhQyyO8eHQCLRyX+8TtASNp5lUZRZSSUdHyJoX9J02wZbxXQ0BchyU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9qNaS/mHG0CWRhBXyo18LMgHGDC++HAHg2FdEUDjFsI=; b=bunJoxsi1/Y8oNc7mA/EG8hOKv
 k1kinK4dxeiUh759qFbcI7dITIhS0pXnJF0uqpTAuRxgPJk9dSSh8vtQTVMg7sHV7qFhHCpbhFAvp
 zeaOq6GSaOppy8wFR7HqbJCnOYFsB2Q5OtFXGLALfKNquNCTqPhMep/DRlZK95+zGnJU=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vgVeo-0003tl-Vb for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 22:17:35 +0000
Received: by mail-oi1-f193.google.com with SMTP id
 5614622812f47-459ac606f0bso792219b6e.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 15 Jan 2026 14:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20230601.gappssmtp.com; s=20230601; t=1768515449; x=1769120249;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9qNaS/mHG0CWRhBXyo18LMgHGDC++HAHg2FdEUDjFsI=;
 b=R/e3T6vUggkt9qvIMbLKh7efTJoiSdr2cq0lbnR8KzJBKmjHHKvseBVBG4friOvDRa
 1MS7+UMjx2KiqVvTsitsOXQHECw757fYODn8EbhCUVWXBfO+hvZF7Xw9tCaZBxGyNKcn
 T3XW3An5BxTDcSGpmgPe2d1ALcnAz821Srx+ClGDdgyydp02ogChJCd8U67jWVUuSW3P
 kHE6kfFjE2CHAHRp7m8N85PeNlxtwQzhCA4Rt4WPed9Lj+5/4foTaXgXpsB5/RBg0MyD
 iwye5cpM5F3CFOop3vbURX0s3MJgDWjIpfVu/pLLfJ0ykbEbxrq/4tCzd146sEw4d1u0
 j0OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768515449; x=1769120249;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9qNaS/mHG0CWRhBXyo18LMgHGDC++HAHg2FdEUDjFsI=;
 b=O3GFmAYCeI+eKkDeXhsoUKSn8OPzHt7VQ3c2zDow++v12kebAk/h+NxXGKvxMUFQ5z
 6thI1KKUXaHQMpk3dg13oSzOYCkYfkIPpANrpQhbgNbNgmoQr42Try13mMcv6RU1xtYD
 gEnks6X/hC6uDLA/JbXZwtSqDjPN7f5ZHE1UE10RcXMGiG929G8aMJhnhPE2r0yTEAGl
 dyfF4nNCsfg+SwD77LRedesBmzmYIYz/GQUjrWew6nRiIfsmqZAaOoFCyxhKpR9aTVX2
 LPeqTnW84P7tsBgdp6SOpELay6RbP/zkTu7MmreBjqhVZGOO4vtue2WmTg5UXUWWyvVH
 Hlog==
X-Forwarded-Encrypted: i=1;
 AJvYcCWmt4YpMzL8IgiUMpFXXT0xg+Udi714ieNfW8sKsvddkrSXEzSKrtQsvtyVAV5EOnjIFYMSbICLSq1RUPh6wQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw5i7zlPwKlnJL1zu8vqnmS4UCIZi56y4EPqj2iktNrpMv12oh4
 1Bjyjw5LQcWugbD55Lh8MsiJopOJjcdsRvYW3FmGyzmSS7TUHARqHmsVjTFyE8dW6NggGKUHpV0
 Nxi5T
X-Gm-Gg: AY/fxX62p+76xkRyKBqL77ilFrh7cu5ub5bIUHYejCbBX6xZ+SR+ZmzUx18L8/GECsg
 YBzKNyMgQQfGxDkN48hvdzQbysWDTgmGJpRYfhvRLDRy1pmLU4FLmfe7NvLclf7Ssh85rLUjdyt
 aI6wt/RDJOwBsbkiHm1DWAw0LD556jyOqyK90YyGRvI/+K/D46qA2LvK1EwW8HwlNmUVEG8HJ9F
 cGwGtLmO40A/3OETI7D7UyNEif/cdLddU60TaT+XK5CFTZWEjU4VqtMQeOXQVz2/KeSRU0PMdJG
 SBjubtWSpOoGnkSp8f03uNcBphqIKaNRJsey1J0h7yODAugnDWJuowECQX/fj7dseQblV4pQ+VY
 BQ3WZutcdGjSC2Cp2gVqse/80P7OaQTQgdpQ9C4Gn2icMPLWC4ieENTIdWHuzoMygG2U7NXoCAY
 cBibv/2KLRbvsGnrfnHl2ptR0B9PtrDvaX+zAT1lzDdHgXIlbEDzuWfPrZCBsy0/M=
X-Received: by 2002:a05:6a00:1c99:b0:81e:5d52:53b9 with SMTP id
 d2e1a72fcca58-81f9f7f61bamr693898b3a.8.1768511376156; 
 Thu, 15 Jan 2026 13:09:36 -0800 (PST)
Received: from dread.disaster.area (pa49-180-164-75.pa.nsw.optusnet.com.au.
 [49.180.164.75]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-81fa10bda5csm259171b3a.19.2026.01.15.13.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jan 2026 13:09:35 -0800 (PST)
Received: from dave by dread.disaster.area with local (Exim 4.99.1)
 (envelope-from <david@fromorbit.com>) id 1vgUai-00000003vHn-2AU2;
 Fri, 16 Jan 2026 08:09:16 +1100
Date: Fri, 16 Jan 2026 08:09:16 +1100
To: Chuck Lever <cel@kernel.org>
Message-ID: <aWlXfBImnC_jhTw4@dread.disaster.area>
References: <20260115-exportfs-nfsd-v1-0-8e80160e3c0c@kernel.org>
 <CAOQ4uxjOJMwv_hRVTn3tJHDLMQHbeaCGsdLupiZYcwm7M2rm3g@mail.gmail.com>
 <d486fdb8-686c-4426-9fac-49b7dbc28765@app.fastmail.com>
 <CAOQ4uxhnoTC6KBmRVx2xhvTXYg1hRkCJWrq2eoBQGHKC3sv3Hw@mail.gmail.com>
 <4d9967cc-a454-46cf-909b-b8ab2d18358d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d9967cc-a454-46cf-909b-b8ab2d18358d@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 15, 2026 at 02:37:09PM -0500, Chuck Lever wrote:
 > On 1/15/26 2:14 PM, Amir Goldstein wrote: > > On Thu, Jan 15, 2026 at 7:32
 PM Chuck Lever <cel@kernel.org> wrote: > >> > >> > >> > >> On [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
X-Headers-End: 1vgVeo-0003tl-Vb
Subject: Re: [Jfs-discussion] [PATCH 00/29] fs: require filesystems to
 explicitly opt-in to nfsd export support
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
From: Dave Chinner via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Chinner <david@fromorbit.com>
Cc: Martin Brandenburg <martin@omnibond.com>,
 jfs-discussion@lists.sourceforge.net, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Alex Markuze <amarkuze@redhat.com>,
 Sandeep Dhavale <dhavale@google.com>, linux-btrfs@vger.kernel.org,
 Carlos Maiolino <cem@kernel.org>, Amir Goldstein <amir73il@gmail.com>,
 linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 linux-mtd@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Yue Hu <zbestahu@gmail.com>, Miklos Szeredi <miklos@szeredi.hu>,
 samba-technical@lists.samba.org, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Hugh Dickins <hughd@google.com>,
 Dai Ngo <Dai.Ngo@oracle.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christoph Hellwig <hch@infradead.org>, NeilBrown <neil@brown.name>,
 Gao Xiang <xiang@kernel.org>, linux-ext4@vger.kernel.org,
 Salah Triki <salah.triki@gmail.com>, linux-mm@kvack.org,
 devel@lists.orangefs.org, Shyam Prasad N <sprasad@microsoft.com>,
 Olga Kornievskaia <okorniev@redhat.com>, linux-cifs@vger.kernel.org,
 Dave Kleikamp <shaggy@kernel.org>, Chao Yu <chao@kernel.org>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Bharath SM <bharathsm@microsoft.com>,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, gfs2@lists.linux.dev,
 Christian Brauner <brauner@kernel.org>, Theodore Tso <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-erofs@lists.ozlabs.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, Steve French <sfrench@samba.org>,
 Chuck Lever <chuck.lever@oracle.com>, Hongbo Li <lihongbo22@huawei.com>,
 Anna Schumaker <anna@kernel.org>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 David Woodhouse <dwmw2@infradead.org>, Trond Myklebust <trondmy@kernel.org>,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBKYW4gMTUsIDIwMjYgYXQgMDI6Mzc6MDlQTSAtMDUwMCwgQ2h1Y2sgTGV2ZXIgd3Jv
dGU6Cj4gT24gMS8xNS8yNiAyOjE0IFBNLCBBbWlyIEdvbGRzdGVpbiB3cm90ZToKPiA+IE9uIFRo
dSwgSmFuIDE1LCAyMDI2IGF0IDc6MzLigK9QTSBDaHVjayBMZXZlciA8Y2VsQGtlcm5lbC5vcmc+
IHdyb3RlOgo+ID4+Cj4gPj4KPiA+Pgo+ID4+IE9uIFRodSwgSmFuIDE1LCAyMDI2LCBhdCAxOjE3
IFBNLCBBbWlyIEdvbGRzdGVpbiB3cm90ZToKPiA+Pj4gT24gVGh1LCBKYW4gMTUsIDIwMjYgYXQg
Njo0OOKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+Pj4K
PiA+Pj4+IEluIHJlY2VudCB5ZWFycywgYSBudW1iZXIgb2YgZmlsZXN5c3RlbXMgdGhhdCBjYW4n
dCBwcmVzZW50IHN0YWJsZQo+ID4+Pj4gZmlsZWhhbmRsZXMgaGF2ZSBncm93biBzdHJ1Y3QgZXhw
b3J0X29wZXJhdGlvbnMuIFRoZXkndmUgbW9zdGx5IGRvbmUKPiA+Pj4+IHRoaXMgZm9yIGxvY2Fs
IHVzZS1jYXNlcyAoZW5hYmxpbmcgb3Blbl9ieV9oYW5kbGVfYXQoKSBhbmQgdGhlIGxpa2UpLgo+
ID4+Pj4gVW5mb3J0dW5hdGVseSwgaGF2aW5nIGV4cG9ydF9vcGVyYXRpb25zIGlzIGdlbmVyYWxs
eSBzdWZmaWNpZW50IHRvIG1ha2UKPiA+Pj4+IGEgZmlsZXN5c3RlbSBiZSBjb25zaWRlcmVkIGV4
cG9ydGFibGUgdmlhIG5mc2QsIGJ1dCB0aGF0IHJlcXVpcmVzIHRoYXQKPiA+Pj4+IHRoZSBzZXJ2
ZXIgcHJlc2VudCBzdGFibGUgZmlsZWhhbmRsZXMuCj4gPj4+Cj4gPj4+IFdoZXJlIGRvZXMgdGhl
IHRlcm0gInN0YWJsZSBmaWxlIGhhbmRsZXMiIGNvbWUgZnJvbT8gYW5kIHdoYXQgZG9lcyBpdCBt
ZWFuPwo+ID4+PiBXaHkgbm90ICJwZXJzaXN0ZW50IGhhbmRsZXMiLCB3aGljaCBpcyBkZXNjcmli
ZWQgaW4gTkZTIGFuZCBTTUIgc3BlY3M/Cj4gPj4+Cj4gPj4+IE5vdCB0byBtZW50aW9uIHRoYXQg
RVhQT1JUX09QX1BFUlNJU1RFTlRfSEFORExFUyB3YXMgQWNrZWQKPiA+Pj4gYnkgYm90aCBDaHJp
c3RvcGggYW5kIENocmlzdGlhbjoKPiA+Pj4KPiA+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtZnNkZXZlbC8yMDI2MDExNS1ydW5kZ2FuZy1sZWloZ2FiZS0xMjAxOGU5M2MwMGNAYnJh
dW5lci8KPiA+Pj4KPiA+Pj4gQW0gSSBtaXNzaW5nIGFueXRoaW5nPwo+ID4+Cj4gPj4gUEVSU0lT
VEVOVCBnZW5lcmFsbHkgaW1wbGllcyB0aGF0IHRoZSBmaWxlIGhhbmRsZSBpcyBzYXZlZCBvbgo+
ID4+IHBlcnNpc3RlbnQgc3RvcmFnZS4gVGhpcyBpcyBub3QgdHJ1ZSBvZiB0bXBmcy4KPiA+IAo+
ID4gVGhhdCdzIG9uZSB3YXkgb2YgaW50ZXJwcmV0aW5nICJwZXJzaXN0ZW50Ii4KPiA+IEFub3Ro
ZXIgd2F5IGlzICJjb250aW51aW5nIHRvIGV4aXN0IG9yIG9jY3VyIG92ZXIgYSBwcm9sb25nZWQg
cGVyaW9kLiIKPiA+IHdoaWNoIHdvcmtzIHdlbGwgZm9yIHRtcGZzIHRoYXQgaXMgbW91bnRlZCBm
b3IgYSBsb25nIHRpbWUuCj4gCj4gSSB0aGluayB3ZSBjYW4gYmUgYSBsb3QgbW9yZSBwcmVjaXNl
IGFib3V0IHRoZSBndWFyYW50ZWU6IFRoZSBmaWxlCj4gaGFuZGxlIGRvZXMgbm90IGNoYW5nZSBm
b3IgdGhlIGxpZmUgb2YgdGhlIGlub2RlIGl0IHJlcHJlc2VudHMuIEl0Cgo8cGVkYW50aWMgbW9k
ZSBlbmdhZ2VkPgoKRmlsZSBoYW5kbGVzIG1vc3QgZGVmaW5pdGVseSBjaGFuZ2Ugb3ZlciB0aGUg
bGlmZSBvZiBhIC9waHlzaWNhbC8KaW5vZGUuIFVubGlua2luZyBhIGZpbGUgZG9lcyBub3QgcmVx
dWlyZSBlbmRpbmcgdGhlIGxpZmUgb2YgdGhlCnBoeXNpY2FsIG9iamVjdCB0aGF0IHByb3ZpZGVz
IHRoZSBwZXJzaXN0ZW50IGRhdGEgc3RvcmUgZm9yIHRoZQpmaWxlLgoKZS5nLiBYRlMgZHluYW1p
Y2FsbHkgYWxsb2NhdGVzIHBoeXNpY2FsIGlub2RlcyBtaWdodCBpbiBhIGxpZmUgY3ljbGUKdGhh
dCBsb29rcyBzb21ld2hhdCBsaWZlIHRoaXM6CgoJYWxsb2NhdGUgcGh5c2ljYWwgaW5vZGUKCWlu
c2VydCByZWNvcmQgaW50byBhbGxvY2F0ZWQgaW5vZGUgaW5kZXgKCW1hcmsgaW5vZGUgYXMgZnJl
ZQoKCXdoaWxlIChkb24ndCBuZWVkIHRvIGZyZWUgcGh5c2ljYWwgaW5vZGUpIHsKCQkuLi4KCQlh
bGxvY2F0ZSBpbm9kZSBmb3IgYSBuZXcgZmlsZQoJCXVwZGF0ZSBwZXJzaXN0ZW50IGlub2RlIG1l
dGFkYXRhIHRvIGdlbmVyYXRlIG5ldyBmaWxlaGFuZGxlCgkJbWFyayBpbm9kZSBpbiB1c2UKCQku
Li4KCQl1bmxpbmsgZmlsZQoJCW1hcmsgaW5vZGUgZnJlZQoJfQoKCXJlbW92ZSBpbm9kZSBmcm9t
IGFsbG9jYXRlZCBpbm9kZSBpbmRleAoJZnJlZSBwaHlzaWNhbCBpbm9kZQoKaS5lLiBhIGZyZWUg
aW5vZGUgaXMgc3RpbGwgYW4gLWFsbG9jYXRlZCwgaW5kZXhlZCBpbm9kZS0gaW4gdGhlCmZpbGVz
eXN0ZW0sIGFuZCB1bnRpbCB3ZSBwaHlzaWNhbGx5IHJlbW92ZSBpdCBmcm9tIHRoZSBmaWxlc3lz
dGVtCnRoZSBpbm9kZSBsaWZlIGN5Y2xlIGhhcyBub3QgZW5kZWQuCgpJT1dzLCB0aGUgcGh5c2lj
YWwgKHBlcnNpc3RlbnQpIGlub2RlIGxpZmV0aW1lIGNhbiBzcGFuIHRoZSBsaWZldGltZQpvZiAt
bWFueS0gZmlsZXMuIEhvd2V2ZXIsIHRoZSBmaWxlc3lzdGVtIGd1YXJhbnRlZXMgdGhhdCB0aGUg
aGFuZGxlCmdlbmVyYXRlZCBmb3IgdGhhdCBpbm9kZSBpcyBkaWZmZXJlbnQgZm9yIGVhY2ggZmls
ZSBpdCByZXByZXNlbnRzCm92ZXIgdGhlIHdob2xlIGlub2RlIGxpZmUgdGltZS4KCkhlbmNlIEkg
dGhpbmsgdGhhdCBmaWxlIGhhbmRsZSBzdGFiaWxpdHkvcGVyc2lzdGVuY2UgbmVlZHMgdG8gYmUK
ZGVmaW5lZCBpbiB0ZXJtcyBvZiAtZmlsZSBsaWZldGltZXMtLCBub3QgdGhlIGxpZmV0aW1lcyBv
ZiB0aGUKZmlsZXN5c3RlbSBvYmplY3RzIGltcGxlbWVudCB0aGUgZmlsZSdzIHBlcnNpc3RlbnQg
ZGF0YSBzdG9yZS4KCi1EYXZlLgotLSAKRGF2ZSBDaGlubmVyCmRhdmlkQGZyb21vcmJpdC5jb20K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNz
aW9uCg==
