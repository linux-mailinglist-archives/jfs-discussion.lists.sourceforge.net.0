Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BKlCCekcGlyYgAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jan 2026 11:02:15 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C0B54D7A
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Jan 2026 11:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jFfAfJZdJ+Rsh7i2cy5qHc1ZUw5b9CCqPC1IM4PoDYU=; b=cKo5NY+EJvkZvj4baiV9sldLko
	zJGxWc5odJ6/BvfzlcLn4aDdCP9746USYT3E97hlZMalG1s034jEPwAkgWEo3rU3Kp9Yn4W1fNv1D
	Uvl2Ll0vPvm/wwqeBhpkz2s7r5yn1/6qv6h52raQppVyjL8MlKgC2MnM/WXnLGUSmycQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1viV28-0001NV-2u;
	Wed, 21 Jan 2026 10:01:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+bcc91a9d4ebb8e7eb2a7+8186+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1viV23-0001N6-IC; Wed, 21 Jan 2026 10:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GioNW15OomQxHDkrEn0KiwooaQGMLNQRkXTreUFMIec=; b=DYHRgNBx+Kxla4FMAjD1XYnRVV
 AbgXOteLldzq7zMjtSH2ifMeNN0MJEZIq0MGVvh7AKqiQcvhyVAtr3f3YFtTtZjNCJwEre6eH46VX
 IQWQoYikb2a+RLpOHM3GgeDXUVkE5RNvgvC1d+AC5fyLMVe8hkzqXs9POOFZz04B91wg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GioNW15OomQxHDkrEn0KiwooaQGMLNQRkXTreUFMIec=; b=mYJNrvvDVV9mXCUv48r3KoGjFq
 Ne1+mjZk3GUSwc4ov3bQ99NZ5EE3Y85M7MdWfdHs4xYazd2GiYC6YsYkJ9ErGM2wkpTtUhxJgwcRv
 2OdnKwwHvH821YPXa7njI56RbPr8xapfd7F9PkXSXu+fY1bp2B9/UPKYjiO6teINoSJY=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1viV23-0001ws-6N; Wed, 21 Jan 2026 10:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GioNW15OomQxHDkrEn0KiwooaQGMLNQRkXTreUFMIec=; b=EaSvsuv1TZU2mN64SuI/yRVvS1
 3Rh/o5w7ffYW9KHMX3qJFZZJY4Zzl1PqNJPpWxGM180BKBkt1SVZFGf8QKJcPb0NWjtvv122nEg1H
 OzFKwZ0gcBbQvObpgoOE/2S+Akn4EjCCUUrNtIIKyHvXpH4dzmYWnUtYA/DxyVwWVYhx9ZlF2yvok
 Jrg9DRyKF5qf1NZ8Tm6yVvdUHQyxI2EoJTmHc6/BHt1VYfHI5t8QgU5fVVRxuVw0cApsiz1v6k8h0
 KfPlNLRNbSqHEjiliAGF0iIZ/4UIT4AbAx2DF6R6e2q5SykjxB6n79Ri9aRji9M3oB2bi2qkRcfmf
 m1yhErTQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1viV1i-00000005ETt-0UQN;
 Wed, 21 Jan 2026 10:01:26 +0000
Date: Wed, 21 Jan 2026 02:01:26 -0800
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <aXCj9ooYaqsL9oyP@infradead.org>
References: <9c99197dde2eafa55a1b55dce2f0d4d02c77340a.camel@kernel.org>
 <176877859306.16766.15009835437490907207@noble.neil.brown.name>
 <aW3SAKIr_QsnEE5Q@infradead.org>
 <176880736225.16766.4203157325432990313@noble.neil.brown.name>
 <20260119-kanufahren-meerjungfrau-775048806544@brauner>
 <176885553525.16766.291581709413217562@noble.neil.brown.name>
 <20260120-entmilitarisieren-wanken-afd04b910897@brauner>
 <176890211061.16766.16354247063052030403@noble.neil.brown.name>
 <20260120-hacken-revision-88209121ac2c@brauner>
 <a35ac736d9ebc6c92a6e7d61aeb5198234102442.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a35ac736d9ebc6c92a6e7d61aeb5198234102442.camel@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 20, 2026 at 07:50:32AM -0500, Jeff Layton wrote:
 > At this point,
 maybe we should just go with Neil's > EXPORT_OP_SUPPORTS_NFS_EXPORT
 or something. It's much more arbitrary, > than trying [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1viV23-0001ws-6N
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@infradead.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[omnibond.com,lists.sourceforge.net,suse.cz,manguebit.org,redhat.com,google.com,vger.kernel.org,kernel.org,gmail.com,paragon-software.com,fb.com,dilger.ca,vivo.com,lists.infradead.org,szeredi.hu,nod.at,fasheh.com,oracle.com,infradead.org,brown.name,kvack.org,lists.orangefs.org,microsoft.com,talpey.com,lists.linux.dev,suse.com,zeniv.linux.org.uk,linux.alibaba.com,mail.parknet.co.jp,mit.edu,lists.ozlabs.org,samba.org,huawei.com,squashfs.org.uk,linux-foundation.org,evilplan.org];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,infradead.org:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_GT_50(0.00)[72];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,infradead.org:s=bombadil.20210309];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[hch@infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,infradead.org:mid,infradead.org:replyto]
X-Rspamd-Queue-Id: 81C0B54D7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 07:50:32AM -0500, Jeff Layton wrote:
> At this point, maybe we should just go with Neil's 
> EXPORT_OP_SUPPORTS_NFS_EXPORT or something. It's much more arbitrary,
> than trying to base this on criteria about filehandle stability, but it
> would give us the effect we want.

We'll still need a stable handles flag, and expose it to userspace
to avoid applications being tricked into using broken non-stable
file handles.  We should have caught that when they were added, but
didn't unfortunately.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
