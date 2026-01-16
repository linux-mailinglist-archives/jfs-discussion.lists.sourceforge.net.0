Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E97BD2A3F1
	for <lists+jfs-discussion@lfdr.de>; Fri, 16 Jan 2026 03:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dyvarsLxzjZuQrtWCGN9cdKjFu2rf19hKtMbgnF28rw=; b=SjyQrjEMa9plLwMfuOI/pfZw4M
	0ktKl7rA3yT5qJySTGJ/jOk85JLG+Bm6sO5LSF7lcVIhEaRrkgn1yP1y1qGCW7/hSImxvOSBY1uA+
	a471uEZxinSPLU6yme6zh+YjPcu1yA+PP+X1YVk9pChKhpVrspbbSTy0yYBELMso9+us=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vgZlB-0002iL-OK;
	Fri, 16 Jan 2026 02:40:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tytso@mit.edu>) id 1vgZl9-0002i3-SB
 for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Jan 2026 02:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e7+ZkXTf+cEt8COK7ZiBm7FpEGCZkXwmsqQ2YKKQgYQ=; b=I28ikb+Q+2Ca5rQQVy67rIRAeQ
 AW+ZcCC1ioe8liGh3jC2SEpMvCNOcfL+qSm0dp4goRtFHAsIsExpEHKBn4nwx74b1S9iaPJYoaz+E
 fm884ANJThxt7HJt3Srmn021nBE/IH8Aq/W6Vr7yms2y4C6yyNF/ZarXbjACAjVcVJHA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e7+ZkXTf+cEt8COK7ZiBm7FpEGCZkXwmsqQ2YKKQgYQ=; b=COU+Dcoq4hdm9m2n63Yx7wepAi
 bbJ5CJgyjNpH87JZlXiQMuOjZrU8LxaDQ0a2PBFWpJx7HsGzCmXQ5OmLSAgElKOY6ogkH68F2tOvP
 e7XSWHlzs3gV9b6c7+SP8d67wkR7Eay6AvHCtJqRa4pE76+v5MKuXH5JhedF/hWsuwUM=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vgZlA-0007Tc-5q for jfs-discussion@lists.sourceforge.net;
 Fri, 16 Jan 2026 02:40:24 +0000
Received: from macsyma.thunk.org ([37.140.223.154]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 60G2M4QF012987
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 15 Jan 2026 21:22:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1768530137; bh=e7+ZkXTf+cEt8COK7ZiBm7FpEGCZkXwmsqQ2YKKQgYQ=;
 h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
 b=CKqH0dMhvlhBzX4Ihkt/n9SLGrWfxX4mn8QeWQB6i/JMAynZ/PpZnz2J7QzS+Bs5J
 LHYjeS4eVH/+ftuv6ryVG1XbTNkEBDxBvsdirBrG5SJDvA92Anx4u3N3DTR/EiIhC5
 D7kuOYWuR+wEG+aT+6digJ4U2JgVCouMwzPvCca8UfAIhFjTH/mNpBMF8a1mqTO4TR
 J3Ca6tRIWBeIDKXxVFNRB7jtbFt4susYUTGwXkPso02XWNw91PlkdVzLKiVnspunHr
 roxMctbg4I/pbwnOXw13om2WtDRQ1218LHXRi7gxhCYQcXc4EIsE/wDw9NxL3LC14F
 SKf5FnkqXpe0Q==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
 id A12EE54D8E5B; Thu, 15 Jan 2026 17:22:03 -0900 (AKST)
Date: Thu, 15 Jan 2026 17:22:03 -0900
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20260116022203.GE19200@macsyma.local>
References: <20260115-exportfs-nfsd-v1-0-8e80160e3c0c@kernel.org>
 <20260115-exportfs-nfsd-v1-3-8e80160e3c0c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260115-exportfs-nfsd-v1-3-8e80160e3c0c@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 15, 2026 at 12:47:34PM -0500, Jeff Layton wrote:
 > Add the EXPORT_OP_STABLE_HANDLES flag to ext4 export operations to indicate
 > that this filesystem can be exported via NFS. > > Signed-of [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vgZlA-0007Tc-5q
Subject: Re: [Jfs-discussion] [PATCH 03/29] ext4: add
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
From: Theodore Tso via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Theodore Tso <tytso@mit.edu>
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
 Christian Brauner <brauner@kernel.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jan 15, 2026 at 12:47:34PM -0500, Jeff Layton wrote:
> Add the EXPORT_OP_STABLE_HANDLES flag to ext4 export operations to indicate
> that this filesystem can be exported via NFS.
> 
> Signed-off-by: Jeff Layton <jlayton@kernel.org>

Acked-by: Theodore Ts'o <tytso@mit.edu>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
