Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHodDmoicWl8eQAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jan 2026 20:00:58 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E45F5BB42
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jan 2026 20:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F7JktelEtpM2F8bYxbvuWCHe/ot5Q7dXc7lNI28w89s=; b=K1ZLfvzzo7BQILRBEqjYejkIGE
	iBzJOs3sqXayxZYRQASg0JtRC6xidbkPWdAlMPotwRJSJ95G3XEeiZYp463oTXAL88W+K9j/mFwJv
	hnaPXyFvyk/TJmrWQaRpZ6WIl1zH/c7P/RX+SKr6fICVNSwVQzLAvwwunmINYP6CNMUc=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vidRB-0001rn-1K;
	Wed, 21 Jan 2026 19:00:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vidR9-0001rh-3B
 for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jan 2026 19:00:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P50vKKEGRcti/ilk0zXXEyTeAkMnj2pLP0nOzx4jcho=; b=VtFo4baG5eHVunHiPZ4VoJOIok
 IWufSSsd/h/JYpKpOY/lykCflidjKrWaXrz44VnqGqzCVdyXA2bxMDxMdQE/T2TpXMnsNWILbycgj
 C4wGY6BPJKNhAUGRYe9u/fevES132ATGD5sMKHBlTyOnNfAtJRClCwXS81EwQhh1CM3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P50vKKEGRcti/ilk0zXXEyTeAkMnj2pLP0nOzx4jcho=; b=e61KA+laBkAylmaiEdGDYKtqkv
 VXe5TPbYp2l1RnJ4QOe2aY7tcG3iHj/miNV8opsKDV65gG58Cl97hSFSATNek20gVg5yfXBGnz82Z
 dh6eJnE3RN6joRmCsvcWo9VoCMrDqQHce5ndXClWBKIzhrrT/DDClW4yZtPVgwm0njHY=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vidR8-00006M-Me for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Jan 2026 19:00:15 +0000
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-658072a4e56so379735a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 21 Jan 2026 11:00:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769022008; cv=none;
 d=google.com; s=arc-20240605;
 b=U0XnkpNMvp0pTv4OQyzpw6rn76E0FxMmI2i7Z04OV5L2QGSJIbPbIUeusZ7OG2j0Yt
 9Jjp1ZOqxOolstA01rXy+dFS5um0B2bT3EAiuUa416Koie+AUJorRelzZX7p9DPw0duP
 +pvxvnFqGBVn53/NZboFbtnud+Ovy368IhKviwf7A8Ui9JOVeDHEr1U/52iFOCvSwkfx
 gpLrjRQOFokuzSUgDFoC+rSsYps1NZjkGe2m/MCiGfN+Sxq8MvF2iEdcW1MvfZwdHkLk
 yI0NBtyuuuUX5myNSoQ1XFc170eT3WCols5wJF4AJJRHsGQHPpPgmdCx2A7SLF27d8o5
 laXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=P50vKKEGRcti/ilk0zXXEyTeAkMnj2pLP0nOzx4jcho=;
 fh=t0CmtL7/wNMDT7mgfvLPfM3Bxw4lrvL6uYe8q7PC478=;
 b=jm+7UnXl1IUKtOF/vmXkq7+YaDd7+0BUGIg+qk03x24CCPSRfS/I4BY47vYGxgGpLS
 wA0gw7iZFnniClQaEr9A4svdZ+iNX3ALZbK6AGdf7FhT6sYewyvdlA1HerWuQG62DXbA
 NWdO43ST8D73LOGSPMvvcAsMQ/SRvqnpg+L4TU/I/ncs/iW/7CIcZmjrASuGxsj937+2
 z0Wy3qjaeuzOZRxCyXXQC9zQwy1lPKJVvMw8Lla9g9r/t0Pj/CDvhIQwsilA8cAnHnuY
 ssXCC8y6lxk3S9pZ9AgYgektcuq0Cq64ZIwK+hn3JZjmJiQaM3SzHt0KH4o3qXng6z0B
 CTOw==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769022008; x=1769626808; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=P50vKKEGRcti/ilk0zXXEyTeAkMnj2pLP0nOzx4jcho=;
 b=mOzULpvN+6377kOx9Kk4mD88IkoXVPA6cJkhUf+WuAd1DMmC9ONMiUAwbY8yx6ZuHz
 WSwHszdZsV11NAMtathI6xaLDbcyMxHP+KTKVFDWWOTbYVbDrR2dh7SjqbMJkMvRBAwr
 Ql8PHxcN81LY5MgIfdHPLr6Vrcr0w0Aw1JR7Fk17dcg3SdCnThVTwUb//G7+ZCHfsbvw
 kEviWz1O0Q6igaWIpFnkIlwg3yuFao6FDT2opXwnMKr8dDKOvj75aQo6OrQn4e2u9qYr
 DlGF6c7bm7wDqtyT3Ay/BTBLAqO01Suz7RYHRrZYTHhhID+Epd0uPh7cLfMWSQ6AaIU+
 ojCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769022008; x=1769626808;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=P50vKKEGRcti/ilk0zXXEyTeAkMnj2pLP0nOzx4jcho=;
 b=JFLJya0MoalXU8rtggaVW1BcAv3ZbaHhJzljVW6sVK5BcJu2KCx5uabGAOj1MIWypk
 MCfjaIDr1bfAPT7BCxOSJ3KL+DJc9Fuwo6xWMz5QnEkFNAuabKHVVi6i0SJYdHbzvj8X
 k9HCzg9nccX1+qWstofxt1MzZgWvhTCZ2tPTqQSLBKOeduS3mjoIXW/ZpTCPFBf+gF/e
 RI81D9VEPcJLXjANOhp3xMoFVojNU78yVKwCLMyTzXAkwkyFvO5f65U+4eH7DB04THZe
 NZGj4s6qnl1uRRXfUgwb+y60BR1emrOIiLeut8ui6vh6vkJPVYwJqbckKDN4bZ6+6wVS
 UZsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfUwQc7zAFqYLDOFXB34OX5uW5RGKVm+IacHpGVlcurVQB7esq/e+nuiudu/cym+e8/OT+3hA3At7Af5JywQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx6oNB15d/09bZhc4UMeMN1PGOTNoJWHZgWQ3bfCheG5wrvuFFs
 GhMIfEIRalDSSZ/DhssACRAfm9ENrv7jByZcAx7KGBi9mbXctY3Ae6Qy3/yzPiPMK90EkT0Cltb
 1KBuzmMCJ6gC8IisZJccjuJx1Xne1t8A=
X-Gm-Gg: AZuq6aKIBLukb+ZJ/RDtnM5ai09XAGq0HqMDwWn8nd1aNrx8cGNAi6AqWkn162FdUK3
 VV8EdJ6Bo55SSc7Sn+/JE6Zvu469UPEWQ5OUgbaWzh37CONvnq15U9jzfO4YGYMuaERg1Ejca/x
 Skvv/nK/XuyaD5rA0OZHRS1k3EuHL24/2pFTc7tFtmU/GURBW5DYjLUTsLW3utOYMkRDYWuPnz9
 sJ6u5IkWRAESGqFlLSwUTzbDCk4ganrlAlblBSkdWHdaheWDq/4J84MQ9sypFYTfF94TPfsXZp0
 IFcr7FDHVDai67inrRBNjxguYrw=
X-Received: by 2002:a17:906:6a13:b0:b87:206a:a23b with SMTP id
 a640c23a62f3a-b8792f79852mr1477117366b.34.1769022007470; Wed, 21 Jan 2026
 11:00:07 -0800 (PST)
MIME-Version: 1.0
References: <20260115-exportfs-nfsd-v1-0-8e80160e3c0c@kernel.org>
 <CAOQ4uxjOJMwv_hRVTn3tJHDLMQHbeaCGsdLupiZYcwm7M2rm3g@mail.gmail.com>
 <9c99197dde2eafa55a1b55dce2f0d4d02c77340a.camel@kernel.org>
 <176877859306.16766.15009835437490907207@noble.neil.brown.name>
 <aW3SAKIr_QsnEE5Q@infradead.org>
 <176880736225.16766.4203157325432990313@noble.neil.brown.name>
 <20260119-kanufahren-meerjungfrau-775048806544@brauner>
 <176885553525.16766.291581709413217562@noble.neil.brown.name>
 <20260120-entmilitarisieren-wanken-afd04b910897@brauner>
 <176890211061.16766.16354247063052030403@noble.neil.brown.name>
 <20260120-hacken-revision-88209121ac2c@brauner>
 <a35ac736d9ebc6c92a6e7d61aeb5198234102442.camel@kernel.org>
 <176896790525.16766.11792073987699294594@noble.neil.brown.name>
 <ccb32c576cc4ebf943d5ec35e3d7ba4ae8892acd.camel@kernel.org>
In-Reply-To: <ccb32c576cc4ebf943d5ec35e3d7ba4ae8892acd.camel@kernel.org>
Date: Wed, 21 Jan 2026 19:59:56 +0100
X-Gm-Features: AZwV_Qh050IhjThhArfxNo-53HjJR0uLCcITEQOtntS-75Lw875opD6ONQssxps
Message-ID: <CAOQ4uxg+dC1o+6V7Nvxf8UW3H=0OvsGjEe76LNY6q8ZcpGDDJw@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 21, 2026 at 12:56 PM Jeff Layton wrote: > ...
 > > But if you really really want to set this new flag on almost every > >
 export_operations, can I ask that you please set it on EVERY expo [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.46 listed in wl.mailspike.net]
X-Headers-End: 1vidR8-00006M-Me
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
 Christian Brauner <brauner@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-erofs@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Steve French <sfrench@samba.org>, Chuck Lever <chuck.lever@oracle.com>,
 Hongbo Li <lihongbo22@huawei.com>, Anna Schumaker <anna@kernel.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 David Woodhouse <dwmw2@infradead.org>, Trond Myklebust <trondmy@kernel.org>,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-4.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[omnibond.com,lists.sourceforge.net,suse.cz,manguebit.org,redhat.com,google.com,vger.kernel.org,kernel.org,paragon-software.com,fb.com,dilger.ca,vivo.com,gmail.com,lists.infradead.org,szeredi.hu,nod.at,fasheh.com,oracle.com,infradead.org,brown.name,kvack.org,lists.orangefs.org,microsoft.com,talpey.com,lists.linux.dev,suse.com,zeniv.linux.org.uk,linux.alibaba.com,mail.parknet.co.jp,mit.edu,lists.ozlabs.org,samba.org,huawei.com,squashfs.org.uk,linux-foundation.org,evilplan.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jlayton@kernel.org,m:martin@omnibond.com,m:jfs-discussion@lists.sourceforge.net,m:jack@suse.cz,m:pc@manguebit.org,m:amarkuze@redhat.com,m:dhavale@google.com,m:linux-btrfs@vger.kernel.org,m:cem@kernel.org,m:linux-unionfs@vger.kernel.org,m:almaz.alexandrovich@paragon-software.com,m:clm@fb.com,m:adilger.kernel@dilger.ca,m:guochunhai@vivo.com,m:ronniesahlberg@gmail.com,m:linux-mtd@lists.infradead.org,m:hubcap@omnibond.com,m:linux-xfs@vger.kernel.org,m:linux-nilfs@vger.kernel.org,m:zbestahu@gmail.com,m:miklos@szeredi.hu,m:richard@nod.at,m:mark@fasheh.com,m:hughd@google.com,m:Dai.Ngo@oracle.com,m:konishi.ryusuke@gmail.com,m:hch@infradead.org,m:neil@brown.name,m:xiang@kernel.org,m:linux-ext4@vger.kernel.org,m:salah.triki@gmail.com,m:linux-mm@kvack.org,m:devel@lists.orangefs.org,m:sprasad@microsoft.com,m:okorniev@redhat.com,m:linux-cifs@vger.kernel.org,m:shaggy@kernel.org,m:chao@kernel.org,m:linux-nfs@vger.kernel.org,m:tom@talpey.com,m:ocfs2-devel@lists.linux.dev,m
 :bharathsm@microsoft.com,m:dsterba@suse.com,m:viro@zeniv.linux.org.uk,m:baolin.wang@linux.alibaba.com,m:jefflexu@linux.alibaba.com,m:jaegeuk@kernel.org,m:ceph-devel@vger.kernel.org,m:idryomov@gmail.com,m:hirofumi@mail.parknet.co.jp,m:agruenba@redhat.com,m:gfs2@lists.linux.dev,m:brauner@kernel.org,m:tytso@mit.edu,m:luisbg@kernel.org,m:joseph.qi@linux.alibaba.com,m:linux-erofs@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:linux-f2fs-devel@lists.sourceforge.net,m:sfrench@samba.org,m:chuck.lever@oracle.com,m:lihongbo22@huawei.com,m:anna@kernel.org,m:jack@suse.com,m:linux-fsdevel@vger.kernel.org,m:phillip@squashfs.org.uk,m:akpm@linux-foundation.org,m:ntfs3@lists.linux.dev,m:dwmw2@infradead.org,m:trondmy@kernel.org,m:jlbec@evilplan.org,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[71];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[jfs-discussion];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[amir73il@gmail.com]
X-Rspamd-Queue-Id: 8E45F5BB42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBKYW4gMjEsIDIwMjYgYXQgMTI6NTbigK9QTSBKZWZmIExheXRvbiA8amxheXRvbkBr
ZXJuZWwub3JnPiB3cm90ZToKPgouLi4KPiA+IEJ1dCBpZiB5b3UgcmVhbGx5IHJlYWxseSB3YW50
IHRvIHNldCB0aGlzIG5ldyBmbGFnIG9uIGFsbW9zdCBldmVyeQo+ID4gZXhwb3J0X29wZXJhdGlv
bnMsIGNhbiBJIGFzayB0aGF0IHlvdSBwbGVhc2Ugc2V0IGl0IG9uIEVWRVJZIGV4cG9ydAo+ID4g
b3BlcmF0aW9ucywgdGhlbiBhbGxvdyBtYWludGFpbmVycyB0byByZW1vdmUgaXQgYXMgdGhleSBz
ZWUgZml0Lgo+ID4gSSB0aGluayB0aGF0IGFwcHJvYWNoIHdvdWxkIGJlIG11Y2ggZWFzaWVyIHRv
IHJldmlldy4KPiA+Cj4KPiBXZSBjb3VsZCBwcm9iYWJseSBkbyB0aGF0LCBidXQgSSB0aGluayB0
aGUgbWFpbiBvbmVzIHRoYXQgZXhjbHVkZXMgaXQKPiBhcmUga2VybmZzLCBwaWRmcyBhbmQgbnNm
cy4gb3ZsIGFuZCBmdXNlIGFsc28gaGF2ZSBleHBvcnQgb3BzIGluCj4gY2VydGFpbiBtb2RlcyB0
aGF0IGV4Y2x1ZGUgTkZTIGFjY2Vzcywgc28gdGhlIGZsYWcgd2FzIGxlZnQgb2ZmIG9mCj4gdGhv
c2UgYXMgd2VsbC4KPgoKRm9yIHRoZSByZWNvcmQsIG15IGNvbW1lbnRzIHJlZ2FyZGluZyBmdXNl
X2V4cG9ydF9maWRfb3BlcmF0aW9ucwphbmQgb3ZsX2V4cG9ydF9maWRfb3BlcmF0aW9ucyB2YXJp
YW50cyB3ZXJlIHB1cmVseSBzZW1hbnRpYyAtCml0IGRpZCBub3QgbWFrZSBzZW5zZSB0byBtYXJr
IHRoZW0gYXMgX1NUQUJMRV9IQU5ETEUsIGJ1dAppdCBkb2VzIG5vdCBtYXR0ZXIgaWYgeW91IHNl
dCBhIGZsYWcgb24gdGhvc2Ugb3BzLCBiZWNhdXNlIHRoZXkgZG8Kbm90IGltcGxlbWVudCAtPmZo
X3RvX2RlbnRyeSgpLCBvbiBwdXJwb3NlLCB0aGV5IGFyZSBub3QKZXhwb3J0ZnNfY2FuX2RlY29k
ZV9maCgpIGJ5IGRlc2lnbi4KClRoYW5rcywKQW1pci4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZz
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
