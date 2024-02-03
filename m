Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5D6847E49
	for <lists+jfs-discussion@lfdr.de>; Sat,  3 Feb 2024 02:55:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rW5Ff-0004f5-B6;
	Sat, 03 Feb 2024 01:55:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1rW5Fd-0004ez-Aw
 for jfs-discussion@lists.sourceforge.net;
 Sat, 03 Feb 2024 01:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZVBQiWfc8rwaLuwNmZ+Ntppqhef1TCEP8CC6rLDQTcM=; b=a4cCJSo2JDkPPUYLRXmVZvlqXm
 lMgfkFheoma33cGlrDbMC6C7D5A3GlewXUsvkkar3ZEV8+ZpIrIeQKCl+dlT3AFgMDwKJI4toSZb8
 TI/+A2uFkWjPuz/ShHpyvgqsSPPl+00LNDXz7fFWCR8WCIHg01+AolqYk2LijyAQFLSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZVBQiWfc8rwaLuwNmZ+Ntppqhef1TCEP8CC6rLDQTcM=; b=ECwDDpbszyN5c3aJMif5ryLICo
 8BRIDR9AZ28rL4fRuE6A5qVw7LL9iNwnAHxO0eZHMLa66oIwmdnI6mBYsR7tsG4n67p+czadThfK9
 Z1fLOP/z1Njw5Xdyfdtr6OoI9HtFIHeuNgqPRvFWIH3l1DstJnMyVCJ3peBt8l4RJGLs=;
Received: from mgamail.intel.com ([192.198.163.8])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rW5FY-0001br-8z for jfs-discussion@lists.sourceforge.net;
 Sat, 03 Feb 2024 01:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706925321; x=1738461321;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zj5W0jgMX2iMP6/D1Yn+1ZlFej6I3CPhYxpVBoixFgQ=;
 b=bylUJvBSfOTidOsbnOwtutP+FtE39p4GB+IikIsG/D0is1RJ43mZzQT+
 kF9nb6Wjg4723jzNNEIULO5V0/qCgqK3Ri1+HZ/QuD5QnfGsUUZ0dS6c7
 Aud1OsGV8rKzYMtvAHnHeh0218kC0epwvhbAjly7UpYdqmX2gVsPAYUxx
 jX6NYRhBRo1ca/aqYHSCzXdG7y23G8jyMd1cMmu2wXxsriDypzgr7YQJx
 Ebvw/6o6bd0KTw063xw/ox+K59xbJSI/K+mSwrX0yWgA3a7vXG5WZVG7e
 c1gAhor+2uyEnLHn/lCwNU2MLZzqofs2q0R29UY2RzOwA/7OTb3okvxV8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="17803209"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="17803209"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 17:55:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="433862"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 02 Feb 2024 17:55:14 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rW5Ey-0004Wc-1m;
 Sat, 03 Feb 2024 01:55:11 +0000
Date: Sat, 3 Feb 2024 09:53:39 +0800
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Dave Kleikamp <shaggy@kernel.org>
Message-ID: <202402030956.qthlo2BE-lkp@intel.com>
References: <20240201224605.4055895-11-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240201224605.4055895-11-willy@infradead.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Matthew, kernel test robot noticed the following build
 errors: [auto build test ERROR on kleikamp-shaggy/jfs-next] [also build test
 ERROR on linus/master v6.8-rc2 next-20240202] [If your patch is applied to
 the wrong git tree, kindly drop us a note. And when subm [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rW5FY-0001br-8z
Subject: Re: [Jfs-discussion] [PATCH 10/13] jfs: Convert inc_io and
 mp_anchor to take a folio
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
From: kernel test robot via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: kernel test robot <lkp@intel.com>
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Matthew,

kernel test robot noticed the following build errors:

[auto build test ERROR on kleikamp-shaggy/jfs-next]
[also build test ERROR on linus/master v6.8-rc2 next-20240202]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Matthew-Wilcox-Oracle/jfs-Convert-metapage_read_folio-to-use-folio-APIs/20240202-064805
base:   https://github.com/kleikamp/linux-shaggy jfs-next
patch link:    https://lore.kernel.org/r/20240201224605.4055895-11-willy%40infradead.org
patch subject: [PATCH 10/13] jfs: Convert inc_io and mp_anchor to take a folio
config: loongarch-defconfig (https://download.01.org/0day-ci/archive/20240203/202402030956.qthlo2BE-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240203/202402030956.qthlo2BE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402030956.qthlo2BE-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   fs/jfs/jfs_metapage.c: In function 'remove_metapage':
   fs/jfs/jfs_metapage.c:130:38: error: passing argument 1 of 'folio_detach_private' from incompatible pointer type [-Werror=incompatible-pointer-types]
     130 |                 folio_detach_private(&folio->page);
         |                                      ^~~~~~~~~~~~
         |                                      |
         |                                      struct page *
   In file included from include/linux/buffer_head.h:15,
                    from fs/jfs/jfs_metapage.c:14:
   include/linux/pagemap.h:508:56: note: expected 'struct folio *' but argument is of type 'struct page *'
     508 | static inline void *folio_detach_private(struct folio *folio)
         |                                          ~~~~~~~~~~~~~~^~~~~
   fs/jfs/jfs_metapage.c: In function 'inc_io':
>> fs/jfs/jfs_metapage.c:137:37: warning: dereferencing 'void *' pointer
     137 |         atomic_inc(&mp_anchor(folio)->io_count);
         |                                     ^~
>> fs/jfs/jfs_metapage.c:137:37: error: request for member 'io_count' in something not a structure or union
   cc1: some warnings being treated as errors


vim +/io_count +137 fs/jfs/jfs_metapage.c

  > 14	#include <linux/buffer_head.h>
    15	#include <linux/mempool.h>
    16	#include <linux/seq_file.h>
    17	#include <linux/writeback.h>
    18	#include "jfs_incore.h"
    19	#include "jfs_superblock.h"
    20	#include "jfs_filsys.h"
    21	#include "jfs_metapage.h"
    22	#include "jfs_txnmgr.h"
    23	#include "jfs_debug.h"
    24	
    25	#ifdef CONFIG_JFS_STATISTICS
    26	static struct {
    27		uint	pagealloc;	/* # of page allocations */
    28		uint	pagefree;	/* # of page frees */
    29		uint	lockwait;	/* # of sleeping lock_metapage() calls */
    30	} mpStat;
    31	#endif
    32	
    33	#define metapage_locked(mp) test_bit(META_locked, &(mp)->flag)
    34	#define trylock_metapage(mp) test_and_set_bit_lock(META_locked, &(mp)->flag)
    35	
    36	static inline void unlock_metapage(struct metapage *mp)
    37	{
    38		clear_bit_unlock(META_locked, &mp->flag);
    39		wake_up(&mp->wait);
    40	}
    41	
    42	static inline void __lock_metapage(struct metapage *mp)
    43	{
    44		DECLARE_WAITQUEUE(wait, current);
    45		INCREMENT(mpStat.lockwait);
    46		add_wait_queue_exclusive(&mp->wait, &wait);
    47		do {
    48			set_current_state(TASK_UNINTERRUPTIBLE);
    49			if (metapage_locked(mp)) {
    50				unlock_page(mp->page);
    51				io_schedule();
    52				lock_page(mp->page);
    53			}
    54		} while (trylock_metapage(mp));
    55		__set_current_state(TASK_RUNNING);
    56		remove_wait_queue(&mp->wait, &wait);
    57	}
    58	
    59	/*
    60	 * Must have mp->page locked
    61	 */
    62	static inline void lock_metapage(struct metapage *mp)
    63	{
    64		if (trylock_metapage(mp))
    65			__lock_metapage(mp);
    66	}
    67	
    68	#define METAPOOL_MIN_PAGES 32
    69	static struct kmem_cache *metapage_cache;
    70	static mempool_t *metapage_mempool;
    71	
    72	#define MPS_PER_PAGE (PAGE_SIZE >> L2PSIZE)
    73	
    74	#if MPS_PER_PAGE > 1
    75	
    76	struct meta_anchor {
    77		int mp_count;
    78		atomic_t io_count;
    79		struct metapage *mp[MPS_PER_PAGE];
    80	};
    81	#define mp_anchor(folio) (folio->private)
    82	
    83	static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
    84	{
    85		struct meta_anchor *anchor = folio->private;
    86	
    87		if (!anchor)
    88			return NULL;
    89		return anchor->mp[offset >> L2PSIZE];
    90	}
    91	
    92	static inline int insert_metapage(struct folio *folio, struct metapage *mp)
    93	{
    94		struct meta_anchor *a;
    95		int index;
    96		int l2mp_blocks;	/* log2 blocks per metapage */
    97	
    98		a = folio->private;
    99		if (!a) {
   100			a = kzalloc(sizeof(struct meta_anchor), GFP_NOFS);
   101			if (!a)
   102				return -ENOMEM;
   103			folio_attach_private(folio, a);
   104			kmap(&folio->page);
   105		}
   106	
   107		if (mp) {
   108			l2mp_blocks = L2PSIZE - folio->mapping->host->i_blkbits;
   109			index = (mp->index >> l2mp_blocks) & (MPS_PER_PAGE - 1);
   110			a->mp_count++;
   111			a->mp[index] = mp;
   112		}
   113	
   114		return 0;
   115	}
   116	
   117	static inline void remove_metapage(struct folio *folio, struct metapage *mp)
   118	{
   119		struct meta_anchor *a = mp_anchor(folio);
   120		int l2mp_blocks = L2PSIZE - folio->mapping->host->i_blkbits;
   121		int index;
   122	
   123		index = (mp->index >> l2mp_blocks) & (MPS_PER_PAGE - 1);
   124	
   125		BUG_ON(a->mp[index] != mp);
   126	
   127		a->mp[index] = NULL;
   128		if (--a->mp_count == 0) {
   129			kfree(a);
   130			folio_detach_private(&folio->page);
   131			kunmap(&folio->page);
   132		}
   133	}
   134	
   135	static inline void inc_io(struct folio *folio)
   136	{
 > 137		atomic_inc(&mp_anchor(folio)->io_count);
   138	}
   139	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
