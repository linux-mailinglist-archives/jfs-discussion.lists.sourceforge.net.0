Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8697DD159
	for <lists+jfs-discussion@lfdr.de>; Tue, 31 Oct 2023 17:16:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qxrPV-0006Tj-F2;
	Tue, 31 Oct 2023 16:16:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@linaro.org>) id 1qvFKy-0005KG-Mf
 for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Oct 2023 11:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0SpGzt5EPQBKeC5ysJFqlAOyND1HqZsJcmX27vUekos=; b=IIJXAEQ8u7oRgl6aeAE2W2/Q06
 ZT4RK9/CKUdZEOBVcssEHLfGi7W57HOXs/3sUbgExlrQURaIn9i0nU61/UVluPwN3WU7xnnr3iq8d
 7OjD3MuC4sHWeUFi+t2Be8Jwi5O9X2aG4J3YWeK9xqRKMpS2adS0/vj83+97gAb10RyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0SpGzt5EPQBKeC5ysJFqlAOyND1HqZsJcmX27vUekos=; b=U
 JJqvkkys4X21nbH4CC8bUskYZTvT9sdyANnbpjNPPQsloWy/gxO5YFI4RBmXej5lynyLbEGsbhkfk
 jTBPPYevVW0GZXIKQQWHrn4wsE7UgnM4VdkrO+oadbGQZAIcwie8QXtD6FiTZUXfKXZflpYhEP6Wh
 2vTus/1Fsv8bMKIQ=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qvFKt-007wI7-7V for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Oct 2023 11:12:41 +0000
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-53df747cfe5so6780544a12.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 24 Oct 2023 04:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1698145949; x=1698750749; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0SpGzt5EPQBKeC5ysJFqlAOyND1HqZsJcmX27vUekos=;
 b=oWkWeQoq9y/W1S+pVpZaJXNnor6RMs9oV1YGdAPwREM6IPADwxV9lZKHgu3XjpwF3o
 L7ZiFwMmsDT6X/vSJ09hnVUEarIMo3fsxzFKTyMV1b54PXSySPsfcnob6Wk6UiNPtZZJ
 +yo788apSqquxQILjvRKcD6UBZErc+aB9jRiL5HMGAv/CCZnH+bzUQPt+iBACCv0xkqI
 JGRKhf0tAvXhEGh4n6bxmmKAxw9+qnHFhGq2EOzhc8ATWQWb5buDu9DkQiQ6H8f0sWqv
 um6A0ziYg84bpX12oXqc9iE5PEEIKI6bMnbJnQBUrfp+LBWTmeaYnQDueZqqrzfoQBWU
 YZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698145949; x=1698750749;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0SpGzt5EPQBKeC5ysJFqlAOyND1HqZsJcmX27vUekos=;
 b=Vu4Yyddk7np3r3aiEeWMYOILcrC9sD3rxzYRVY+1sUgz31v9aPTU6LfTPsrfj5zJrV
 D8awqtj6J+P9TMtQI/ABC+dQQ0H/SLkD1JV0wJPEUw4QovkNOENhUvQUIBrsPvJgwMbX
 4wIexJZRfSAEtYYgoUCKT7zxd0/B6vTb5GastQP7L4DGlTSH0ayyoQ0HgCfuw9+6MFxN
 fAPNhkaquk5WTYeQbCPTel0dRBPuQB0dKbZ/X6deCBqgQyfaN5mSEG71EUIBgz9aH1Pf
 JPbWZuZwuWAhBl+o4QQUCW2pQgZKeztiHGKM3nUiMuGvQmQFi33OQr0fetQGj3ppYeM0
 PZRA==
X-Gm-Message-State: AOJu0YyDGnCbDo/ziIa1AN7zqWpct3/woOy5T78I2tBzDSEveH4Oe3aL
 PvXRANsHohLPJ22MRsVLuq1qlQnK9C8vCcHNuuQ=
X-Google-Smtp-Source: AGHT+IFal9H1jvC4Q3PK0I2LyrVEO/TLp7BWA+0hdBEGG9xbWftlWywwFOwOKjSW9JtgKcK+ozdIAQ==
X-Received: by 2002:a05:600c:19d1:b0:405:3955:5881 with SMTP id
 u17-20020a05600c19d100b0040539555881mr9060319wmq.36.1698144397131; 
 Tue, 24 Oct 2023 03:46:37 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e23-20020adf9bd7000000b0032d893d8dc8sm9757680wrc.2.2023.10.24.03.46.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Oct 2023 03:46:36 -0700 (PDT)
Date: Tue, 24 Oct 2023 13:46:33 +0300
To: oe-kbuild@lists.linux.dev, Manas Ghandat <ghandatmanas@gmail.com>,
 dave.kleikamp@oracle.com, shaggy@kernel.org
Message-ID: <f5a9e854-5b6c-49bd-9888-525906665966@kadam.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231016171130.15952-1-ghandatmanas@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Manas,
 kernel test robot noticed the following build warnings:
 https://git-scm.com/docs/git-format-patch#_base_tree_information] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qvFKt-007wI7-7V
X-Mailman-Approved-At: Tue, 31 Oct 2023 16:16:08 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix slab-out-of-bounds Read in
 dtSearch
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
From: Dan Carpenter via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: syzbot+9924e2a08d9ba0fd4ce2@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 lkp@intel.com, linux-kernel@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
 Linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Manas,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Manas-Ghandat/jfs-fix-slab-out-of-bounds-Read-in-dtSearch/20231017-152500
base:   https://github.com/kleikamp/linux-shaggy jfs-next
patch link:    https://lore.kernel.org/r/20231016171130.15952-1-ghandatmanas%40gmail.com
patch subject: [PATCH] jfs: fix slab-out-of-bounds Read in dtSearch
config: i386-randconfig-141-20231022 (https://download.01.org/0day-ci/archive/20231024/202310241724.Ed02yUz9-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20231024/202310241724.Ed02yUz9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202310241724.Ed02yUz9-lkp@intel.com/

smatch warnings:
fs/jfs/jfs_dtree.c:636 dtSearch() warn: impossible condition '(stbl[index] > 128) => ((-128)-127 > 128)'

vim +636 fs/jfs/jfs_dtree.c

^1da177e4c3f41 Linus Torvalds   2005-04-16  567  int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
^1da177e4c3f41 Linus Torvalds   2005-04-16  568  	     struct btstack * btstack, int flag)
^1da177e4c3f41 Linus Torvalds   2005-04-16  569  {
^1da177e4c3f41 Linus Torvalds   2005-04-16  570  	int rc = 0;
^1da177e4c3f41 Linus Torvalds   2005-04-16  571  	int cmp = 1;		/* init for empty page */
^1da177e4c3f41 Linus Torvalds   2005-04-16  572  	s64 bn;
^1da177e4c3f41 Linus Torvalds   2005-04-16  573  	struct metapage *mp;
^1da177e4c3f41 Linus Torvalds   2005-04-16  574  	dtpage_t *p;
^1da177e4c3f41 Linus Torvalds   2005-04-16  575  	s8 *stbl;
                                                        ^^^^^^^^

^1da177e4c3f41 Linus Torvalds   2005-04-16  576  	int base, index, lim;
^1da177e4c3f41 Linus Torvalds   2005-04-16  577  	struct btframe *btsp;
^1da177e4c3f41 Linus Torvalds   2005-04-16  578  	pxd_t *pxd;
^1da177e4c3f41 Linus Torvalds   2005-04-16  579  	int psize = 288;	/* initial in-line directory */
^1da177e4c3f41 Linus Torvalds   2005-04-16  580  	ino_t inumber;
^1da177e4c3f41 Linus Torvalds   2005-04-16  581  	struct component_name ciKey;
^1da177e4c3f41 Linus Torvalds   2005-04-16  582  	struct super_block *sb = ip->i_sb;
^1da177e4c3f41 Linus Torvalds   2005-04-16  583  
6da2ec56059c3c Kees Cook        2018-06-12  584  	ciKey.name = kmalloc_array(JFS_NAME_MAX + 1, sizeof(wchar_t),
6da2ec56059c3c Kees Cook        2018-06-12  585  				   GFP_NOFS);
09aaa749f637b1 Joe Perches      2007-11-13  586  	if (!ciKey.name) {
^1da177e4c3f41 Linus Torvalds   2005-04-16  587  		rc = -ENOMEM;
^1da177e4c3f41 Linus Torvalds   2005-04-16  588  		goto dtSearch_Exit2;
^1da177e4c3f41 Linus Torvalds   2005-04-16  589  	}
^1da177e4c3f41 Linus Torvalds   2005-04-16  590  
^1da177e4c3f41 Linus Torvalds   2005-04-16  591  
^1da177e4c3f41 Linus Torvalds   2005-04-16  592  	/* uppercase search key for c-i directory */
^1da177e4c3f41 Linus Torvalds   2005-04-16  593  	UniStrcpy(ciKey.name, key->name);
^1da177e4c3f41 Linus Torvalds   2005-04-16  594  	ciKey.namlen = key->namlen;
^1da177e4c3f41 Linus Torvalds   2005-04-16  595  
^1da177e4c3f41 Linus Torvalds   2005-04-16  596  	/* only uppercase if case-insensitive support is on */
^1da177e4c3f41 Linus Torvalds   2005-04-16  597  	if ((JFS_SBI(sb)->mntflag & JFS_OS2) == JFS_OS2) {
^1da177e4c3f41 Linus Torvalds   2005-04-16  598  		ciToUpper(&ciKey);
^1da177e4c3f41 Linus Torvalds   2005-04-16  599  	}
^1da177e4c3f41 Linus Torvalds   2005-04-16  600  	BT_CLR(btstack);	/* reset stack */
^1da177e4c3f41 Linus Torvalds   2005-04-16  601  
^1da177e4c3f41 Linus Torvalds   2005-04-16  602  	/* init level count for max pages to split */
^1da177e4c3f41 Linus Torvalds   2005-04-16  603  	btstack->nsplit = 1;
^1da177e4c3f41 Linus Torvalds   2005-04-16  604  
^1da177e4c3f41 Linus Torvalds   2005-04-16  605  	/*
^1da177e4c3f41 Linus Torvalds   2005-04-16  606  	 *	search down tree from root:
^1da177e4c3f41 Linus Torvalds   2005-04-16  607  	 *
^1da177e4c3f41 Linus Torvalds   2005-04-16  608  	 * between two consecutive entries of <Ki, Pi> and <Kj, Pj> of
^1da177e4c3f41 Linus Torvalds   2005-04-16  609  	 * internal page, child page Pi contains entry with k, Ki <= K < Kj.
^1da177e4c3f41 Linus Torvalds   2005-04-16  610  	 *
^1da177e4c3f41 Linus Torvalds   2005-04-16  611  	 * if entry with search key K is not found
^1da177e4c3f41 Linus Torvalds   2005-04-16  612  	 * internal page search find the entry with largest key Ki
^1da177e4c3f41 Linus Torvalds   2005-04-16  613  	 * less than K which point to the child page to search;
^1da177e4c3f41 Linus Torvalds   2005-04-16  614  	 * leaf page search find the entry with smallest key Kj
^1da177e4c3f41 Linus Torvalds   2005-04-16  615  	 * greater than K so that the returned index is the position of
^1da177e4c3f41 Linus Torvalds   2005-04-16  616  	 * the entry to be shifted right for insertion of new entry.
^1da177e4c3f41 Linus Torvalds   2005-04-16  617  	 * for empty tree, search key is greater than any key of the tree.
^1da177e4c3f41 Linus Torvalds   2005-04-16  618  	 *
^1da177e4c3f41 Linus Torvalds   2005-04-16  619  	 * by convention, root bn = 0.
^1da177e4c3f41 Linus Torvalds   2005-04-16  620  	 */
^1da177e4c3f41 Linus Torvalds   2005-04-16  621  	for (bn = 0;;) {
^1da177e4c3f41 Linus Torvalds   2005-04-16  622  		/* get/pin the page to search */
^1da177e4c3f41 Linus Torvalds   2005-04-16  623  		DT_GETPAGE(ip, bn, mp, psize, p, rc);
^1da177e4c3f41 Linus Torvalds   2005-04-16  624  		if (rc)
^1da177e4c3f41 Linus Torvalds   2005-04-16  625  			goto dtSearch_Exit1;
^1da177e4c3f41 Linus Torvalds   2005-04-16  626  
^1da177e4c3f41 Linus Torvalds   2005-04-16  627  		/* get sorted entry table of the page */
^1da177e4c3f41 Linus Torvalds   2005-04-16  628  		stbl = DT_GETSTBL(p);
^1da177e4c3f41 Linus Torvalds   2005-04-16  629  
^1da177e4c3f41 Linus Torvalds   2005-04-16  630  		/*
^1da177e4c3f41 Linus Torvalds   2005-04-16  631  		 * binary search with search key K on the current page.
^1da177e4c3f41 Linus Torvalds   2005-04-16  632  		 */
^1da177e4c3f41 Linus Torvalds   2005-04-16  633  		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
^1da177e4c3f41 Linus Torvalds   2005-04-16  634  			index = base + (lim >> 1);
^1da177e4c3f41 Linus Torvalds   2005-04-16  635  
7812e358b5edde Manas Ghandat    2023-10-16 @636  			if (stbl[index] > 128 || stbl[index] < 0)

If it's stbl is an s8 so it can't be > 128.

7812e358b5edde Manas Ghandat    2023-10-16  637  				goto out;
7812e358b5edde Manas Ghandat    2023-10-16  638  
^1da177e4c3f41 Linus Torvalds   2005-04-16  639  			if (p->header.flag & BT_LEAF) {
^1da177e4c3f41 Linus Torvalds   2005-04-16  640  				/* uppercase leaf name to compare */
^1da177e4c3f41 Linus Torvalds   2005-04-16  641  				cmp =
^1da177e4c3f41 Linus Torvalds   2005-04-16  642  				    ciCompare(&ciKey, p, stbl[index],
^1da177e4c3f41 Linus Torvalds   2005-04-16  643  					      JFS_SBI(sb)->mntflag);
^1da177e4c3f41 Linus Torvalds   2005-04-16  644  			} else {
^1da177e4c3f41 Linus Torvalds   2005-04-16  645  				/* router key is in uppercase */
^1da177e4c3f41 Linus Torvalds   2005-04-16  646  
^1da177e4c3f41 Linus Torvalds   2005-04-16  647  				cmp = dtCompare(&ciKey, p, stbl[index]);

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
