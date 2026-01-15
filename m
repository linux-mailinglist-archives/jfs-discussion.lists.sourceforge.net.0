Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C04ED27676
	for <lists+jfs-discussion@lfdr.de>; Thu, 15 Jan 2026 19:22:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3aojEWOyV0F+wPGyNAY6IsuKIfk5onZvKCmP5/hYR6U=; b=K0Yu3u7+rRE7gQ84B8g0bRaoIa
	wUiq8qEs7KiDJrV1mvfP1FhSJYrvXsR5x/XqqMKbjDF1mRLhr0Rb56hsUeU+pX0KAk/opkyR/JPHr
	yYQ27EWzEE0nVh58/V5U4fXqfuUgv7ZXHaQYs+Dv8R67+8ks+HAXRnKiKiByXnAqOGCk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vgRzB-0001KS-Gy;
	Thu, 15 Jan 2026 18:22:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vgRzA-0001KM-6E
 for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 18:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d7IY8l2+i1WeuEXvkGd5lYKI5+uHV9G4YufUEOTseco=; b=BsyrvdR5VN36S+JtgfFZVekXaC
 /NfV1hYUbpYg0oSrDmOrP3TYcEZ/AUoOLrfKc+96FVH+7nWZDQJfgNX+oPJ//wRXy7jkJx08o6xEU
 kEDHt2icQ0SncH2Z/WKB7wM4jsP+xqHwW48sNJ8w7kHvX2YCpWFZyUkB+hRJlF43IeBE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d7IY8l2+i1WeuEXvkGd5lYKI5+uHV9G4YufUEOTseco=; b=Yg1GqvN4mfhnDaQGjsJwGVzQQC
 gF0C7IFfZGItiV5t4NbM8S8gDjbkI1r5ElCLGn/ZROc/qLWX1cID/VKzpcjZgwwSVM3XhrIKWypIZ
 Me3Gy1zXvaMw04mFhJc1c0NIj9ngjlEgWiKwyl0rUjX1r/ai9z412YIBgTnADhGGQE5w=;
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vgRz9-0001Jc-SM for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Jan 2026 18:22:20 +0000
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-64d1ef53cf3so1907072a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 15 Jan 2026 10:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768501328; x=1769106128; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=d7IY8l2+i1WeuEXvkGd5lYKI5+uHV9G4YufUEOTseco=;
 b=kKKYg5OrpJM/XQM2lddpH51Rslb+g6G8YtWolUXVY3uKskVBiYD3bo0sYKFklXnZrc
 Vq8M5XUOVV3hCuGB51Hz9lV7CdczGtueWUzidPfNOYjnER5byehIuPt7BJuuB/JBOJNB
 B6RJiLXj1YqOc7yVo+WRKtp+COBYJqNIgo4tvEKwkCB+Fs5hGVvytHwvz3QKFoG64rqj
 0MBEdS1TbYRogHGCv3j5HV654Ow5KPCCRqK4M2ZWZZFPtsTiBbC3K2/5cZYuHx5Bq+PQ
 fnzppi1L97RMn8WrKh2Dz1QjKg0HaN8ZU0sOn6jXdnqIu/nO9ykheTa5F3Nafuzw4MHS
 k2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768501328; x=1769106128;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=d7IY8l2+i1WeuEXvkGd5lYKI5+uHV9G4YufUEOTseco=;
 b=BU/8t9ehSPAzHo3f+tsr0voSFHow6VsR6boDYq+k4GqnADsoC5FVhrfb+ighDb37PY
 uosv0oaUw8HxqrmANe9PVQ4n61s4hrHsehYOl4dps+fWxowqannU8Ur2l2v+Nj+UA1Bm
 wjD4chWdAWDRlNR+gZuGefCfX16FYOA9AaN1BSiuCWWOohWT5cttIwiuxmmFtD7Y9b7U
 eN6rlq4HOluzBv3J5FPHOAANQR4ktY4bAlvZ2S8jGXTRsGa4CiSXFasHCNs5XjXSTT72
 /jaXYirHm3Xj/DjKJoLtpAv9A8Tqqcrdi/vlIzU7vKF+JghsylZmibsl3B+yHipiFjjA
 lgpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGQwYV5zgg7RzoO/h/+6QOre0TuqvZCKCi2AzzcYQLORJPkQ6xJ/88TNoHuxbOooxNPAdQpUtEVMWbGy9AvQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwjiNVHYend7ySW83ilTriklyKxrm5+OxlsSw6QoH1z3SSYTtwG
 9+HODhZBxswE40/qXS0IpDgGWIjMYmWsuIe4ukqjGnSNMGUR0gWjCTvbGmFNfgrA38I/SDLk+hF
 kTed5ot/tqj1LVzneOWXkwOsOg8vy6iw=
X-Gm-Gg: AY/fxX6+HlxhSOQlpJ95cNeKGUji6iw6DRkKbl4gu9nkp9eiqnazveOS6V/co+PUO1h
 NAiK9XZh9yarHcx7iOP+asLsVKd54layvoqOAJ+KqrwLSbuaO5d5L5E8vlLY+j4PB2pIUq0gKis
 ExY/hTqTeXtfcvcTsb3uaiZMdNRMxEOFBczUUSqdJipFHuoim56w90Idc4uJ/YcT/iIDrk85crP
 2Axd5gdfT48teP/cxhFtE4pRFKeKeJYQtXPtAL4Hm27j/9MSzBITL+RIQ5q3XP3bNgoPS/x3+ka
 b8/v9NQfwTZedThZ07kkDzF0dklmlg==
X-Received: by 2002:a05:6402:2812:b0:64b:3f56:55c9 with SMTP id
 4fb4d7f45d1cf-65452cca336mr319308a12.26.1768501327990; Thu, 15 Jan 2026
 10:22:07 -0800 (PST)
MIME-Version: 1.0
References: <20260115-exportfs-nfsd-v1-0-8e80160e3c0c@kernel.org>
 <20260115-exportfs-nfsd-v1-16-8e80160e3c0c@kernel.org>
In-Reply-To: <20260115-exportfs-nfsd-v1-16-8e80160e3c0c@kernel.org>
Date: Thu, 15 Jan 2026 19:21:56 +0100
X-Gm-Features: AZwV_Qjyapjv6JnFBHXmI5sSMthIqKsr1O8J34VK_oMMrDctP8UVkm6G-xvI8HQ
Message-ID: <CAOQ4uxhnxipJcjznEoa_D2R91NDZRgT_TTouGA4PGJO-7R9spw@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 15, 2026 at 6:49 PM Jeff Layton wrote: > > Add
 the EXPORT_OP_STABLE_HANDLES flag to overlayfs export operations to indicate
 > that this filesystem can be exported via NFS. > > Signed-off [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.41 listed in wl.mailspike.net]
X-Headers-End: 1vgRz9-0001Jc-SM
Subject: Re: [Jfs-discussion] [PATCH 16/29] ovl: add
 EXPORT_OP_STABLE_HANDLES flag to export operations
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
From: Amir Goldstein via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Amir Goldstein <amir73il@gmail.com>
Cc: Martin Brandenburg <martin@omnibond.com>,
 jfs-discussion@lists.sourceforge.net, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Alex Markuze <amarkuze@redhat.com>,
 Sandeep Dhavale <dhavale@google.com>, linux-btrfs@vger.kernel.org,
 Carlos Maiolino <cem@kernel.org>, linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 linux-mtd@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Yue Hu <zbestahu@gmail.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 Hugh Dickins <hughd@google.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christoph Hellwig <hch@infradead.org>, NeilBrown <neil@brown.name>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Salah Triki <salah.triki@gmail.com>, linux-mm@kvack.org,
 devel@lists.orangefs.org, Shyam Prasad N <sprasad@microsoft.com>,
 Olga Kornievskaia <okorniev@redhat.com>, linux-cifs@vger.kernel.org,
 Dave Kleikamp <shaggy@kernel.org>, Chao Yu <chao@kernel.org>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Bharath SM <bharathsm@microsoft.com>,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Gao Xiang <xiang@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, gfs2@lists.linux.dev,
 Christian Brauner <brauner@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-erofs@lists.ozlabs.org,
 samba-technical@lists.samba.org, linux-kernel@vger.kernel.org,
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

T24gVGh1LCBKYW4gMTUsIDIwMjYgYXQgNjo0OeKAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gQWRkIHRoZSBFWFBPUlRfT1BfU1RBQkxFX0hBTkRMRVMgZmxh
ZyB0byBvdmVybGF5ZnMgZXhwb3J0IG9wZXJhdGlvbnMgdG8gaW5kaWNhdGUKPiB0aGF0IHRoaXMg
ZmlsZXN5c3RlbSBjYW4gYmUgZXhwb3J0ZWQgdmlhIE5GUy4KPgo+IFNpZ25lZC1vZmYtYnk6IEpl
ZmYgTGF5dG9uIDxqbGF5dG9uQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGZzL292ZXJsYXlmcy9leHBv
cnQuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2ZzL292ZXJsYXlmcy9leHBvcnQuYyBiL2ZzL292ZXJsYXlmcy9leHBvcnQuYwo+IGlu
ZGV4IDgzZjgwZmRiMTU2NzQ5ZTY1YTRlYTBhYjcwOGNiZmYzMzhkYWNkYWQuLjE3YzkyYTIyODEy
MGUxODAzMTM1Y2MyYjRmZTQxODBmNWUzNDNmODggMTAwNjQ0Cj4gLS0tIGEvZnMvb3ZlcmxheWZz
L2V4cG9ydC5jCj4gKysrIGIvZnMvb3ZlcmxheWZzL2V4cG9ydC5jCj4gQEAgLTg2NSw5ICs4NjUs
MTEgQEAgY29uc3Qgc3RydWN0IGV4cG9ydF9vcGVyYXRpb25zIG92bF9leHBvcnRfb3BlcmF0aW9u
cyA9IHsKPiAgICAgICAgIC5maF90b19wYXJlbnQgICA9IG92bF9maF90b19wYXJlbnQsCj4gICAg
ICAgICAuZ2V0X25hbWUgICAgICAgPSBvdmxfZ2V0X25hbWUsCj4gICAgICAgICAuZ2V0X3BhcmVu
dCAgICAgPSBvdmxfZ2V0X3BhcmVudCwKPiArICAgICAgIC5mbGFncyAgICAgICAgICA9IEVYUE9S
VF9PUF9TVEFCTEVfSEFORExFUywKPiAgfTsKPgo+ICAvKiBlbmNvZGVfZmgoKSBlbmNvZGVzIG5v
bi1kZWNvZGFibGUgZmlsZSBoYW5kbGVzIHdpdGggbmZzX2V4cG9ydD1vZmYgKi8KPiAgY29uc3Qg
c3RydWN0IGV4cG9ydF9vcGVyYXRpb25zIG92bF9leHBvcnRfZmlkX29wZXJhdGlvbnMgPSB7Cj4g
ICAgICAgICAuZW5jb2RlX2ZoICAgICAgPSBvdmxfZW5jb2RlX2ZoLAo+ICsgICAgICAgLmZsYWdz
ICAgICAgICAgID0gRVhQT1JUX09QX1NUQUJMRV9IQU5ETEVTLAo+ICB9Owo+CgpBY3R1YWxseSwg
c2VlIGNvbW1lbnQgYWJvdmU6Ci8qIGVuY29kZV9maCgpIGVuY29kZXMgbm9uLWRlY29kYWJsZSBm
aWxlIGhhbmRsZXMgd2l0aCBuZnNfZXhwb3J0PW9mZiAqLwoKVGhhdCdzIHRoZSB2YXJpYW50IG9m
IGV4cG9ydF9vcHMgd2hlbiBvdmVybGF5ZnMgY2Fubm90IGJlIG5mcyBleHBvcnRlZApiZWNhdXNl
IGl0cyBlbmNvZGVkIGZpbGUgaGFuZGxlcyBjYW4gY2hhbmdlIGFmdGVyIGNvcHl1cCtyZWJvb3Qu
CgpUaGFua3MsCkFtaXIuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9qZnMtZGlzY3Vzc2lvbgo=
