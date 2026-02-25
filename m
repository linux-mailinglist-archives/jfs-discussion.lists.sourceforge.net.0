Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ngdHIt16n2lmcQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:42:37 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1A419E65F
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:42:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h3JJMV0Fmvszua55ozfYungP/BacP/iiqjUjmZN2Oa0=; b=kv6EJrqAqpy8fX9Fm96v3/HAQF
	75kn8z2VlxJnkYnU8zJ8rRyILNthp8Exc05/pvZX3XIPQ5x86zLEwfDTrjbbw19Doo4A0SBLwcVGQ
	lODkxlKMK+ayOoYEYNGvE0/zwtV6/axaFu1O7G7H1Lr9VldprG/8gSdjJM2LMSN14yug=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvNZq-0005aZ-2i;
	Wed, 25 Feb 2026 22:41:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tz2294@columbia.edu>) id 1vvNZm-0005aO-Rg
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B+x8HlKrObJCF5zGXiosgMuiJzbAlNo3I+yj4hi3OCU=; b=RqKdZmDb4U21KvpO1sL0jPbmoD
 eyLdLld+I0q70uLClWvE7HZhLTIdzggcyDWR/ShemMSYHm62ltyxvZ6WLQkE88bsj9VT+xqCy4TXe
 H2SeVLiA1uTi4L4AP0SQkM7YTJj+AGo051PHzNgzmkkoCTOLXtP/B8rPjdS4IAQLxgbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B+x8HlKrObJCF5zGXiosgMuiJzbAlNo3I+yj4hi3OCU=; b=RVY0TnCvjkP/h8E88zvflKO7oO
 B0trYYy+JuGboW8ZLlDZrYZ4c10oVxpJDzAa0lNz4TOQngI6tldocyG9UFJCvUZsVjKCv/CBb/6Kz
 X9sdUGci5E1XEbcKtlC3j4+2TX+DW0r98qQ18qMQFHfCii7OS+pxHXEvvqZTjHeJc/UA=;
Received: from mx0a-00364e01.pphosted.com ([148.163.135.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvNZm-0005ia-B1 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:41:50 +0000
Received: from pps.filterd (m0167071.ppops.net [127.0.0.1])
 by mx0a-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61PMCUwA1289230
 for <jfs-discussion@lists.sourceforge.net>; Wed, 25 Feb 2026 17:41:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pps01; bh=B+x8
 HlKrObJCF5zGXiosgMuiJzbAlNo3I+yj4hi3OCU=; b=dk9Jybovs8IHdEvEGP9P
 /Q+tTmC5El4AZB2gHDz4eA8v6PeKwiNC27gSP64f3zuophROaYaLhYmmHZXiKwMJ
 NSRp7hKX/59LhbwItsKVPFd7Crde5MZ4zs3tGudNHcoxx4fALdYT98VxFmtL21u7
 fGfx2Y40whZsXWbmDY0qeSprynaAbzY7D4ttYLp1lNjUZRCarCpKgXdwbIuqQBKo
 dAh2ixL7cwqcSMAUrxeiWUHwrgu0D6JUMLqoY/Z34kR3anogYSc0Opb+0Pn0KWVM
 aWbq5vkVIyD/o2s7Co6n14E/UIIBlvbWXdW76yZm6WRRtPqcpoGOJFPXc2AOxDga
 cA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 4cj116dbv2-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 17:41:39 -0500 (EST)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-506bfff75edso29152711cf.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 14:41:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772059299; x=1772664099;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=B+x8HlKrObJCF5zGXiosgMuiJzbAlNo3I+yj4hi3OCU=;
 b=PrnK+DgLeyi+Pw2vPR/MQhEYu3lC0Gfpa4fd6bFzl7Dz58kWru6ZyDkcgew/lPDdXq
 gG10msVEBZkfBX1WusaVwotHgYqVKdknMwth2fo0WI/ulorwjjKfyf95podu/IOHiuIz
 Cvmk9UwxHiwnbgiDq2broaWkkdX6dmF1ShPTknrl/fy2Bj9D/MlZzjUiLojomXrsEHlV
 /Qjxw/eOAB9G68o4DFFKzOw7/7JDccY6B2q91FSgTTxIkIFRNEtvH1pFb9WvAUvj3kLJ
 wRFp7LBU8UqZcFZrP0pkXOwu41Wh7D6bVk7zWufnGZm/DBjp8QRblwWZxxDFVYZbdoj0
 JUSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/O26FFApodrg9+B/QiifgS4MCYxC3GkPcn2uE7a+XlbrA17VVKa0lOyFbJaLanBoie1+Y/Xe8yA/ycNwMOA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyJfPrGqvFu6Y3tDQgKKH2N9CZggcVYAPYuNDN60TNG4rtoVrAD
 v1sDNjIiBgBU85htQ+qR9/jZvz9+bwIE6MemCZbxMY5G1HR7Lgj7sGLrP0rRja2ubBs0SJOqLvU
 axnl5CO/qtImHWf7HtdijYm/a0oF0ynE6npt0RBcriaXx8IxdnFFpLIdhcmpzw9vrvrnBz6d+
X-Gm-Gg: ATEYQzyi/B1t1kzLOCT4amgV9orgrjejBGbXdLK//UL41suZX81/6bH4MutFnw+EdxJ
 iRFyh4zoiqrltnVkYo+XafjlH9KY9XxhbsDbJq2F8R/Mh27YC6cgQOmE/GjgD2MEov3EeSpDA4J
 FDEhqhEUWG/gbTdCF3CE58nZKhFk+JWqn4Xf0J2kHHX3wzGdjwblXbT/MJt3L3QRwLwTABkIlZw
 JMgiCDei50wXXxakmtBiMc/6QeD6FruHi/hc3qOvudqCLwvInLV8iDfOcMVZiEYKCmJboeYOU8H
 k4N88Pzl7/ZOsdmfdW/hRQQDU0rSs3E/LJfHEgKnSjdxXfDCbCze8yAv/U3hDmlRDNwFG1IrYBU
 7OtmIwseXKrDPOxk6Tl+TQdVHOiBpwFcB
X-Received: by 2002:a05:622a:44:b0:4f3:59c1:768c with SMTP id
 d75a77b69052e-507460dc42emr758751cf.60.1772059298718; 
 Wed, 25 Feb 2026 14:41:38 -0800 (PST)
X-Received: by 2002:a05:622a:44:b0:4f3:59c1:768c with SMTP id
 d75a77b69052e-507460dc42emr758291cf.60.1772059298273; 
 Wed, 25 Feb 2026 14:41:38 -0800 (PST)
Received: from [127.0.1.1] ([216.158.158.246])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-507449be47dsm4196231cf.15.2026.02.25.14.41.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Feb 2026 14:41:37 -0800 (PST)
Date: Wed, 25 Feb 2026 17:40:56 -0500
MIME-Version: 1.0
Message-Id: <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
In-Reply-To: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
To: Jens Axboe <axboe@kernel.dk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Yuezhang Mo <yuezhang.mo@sony.com>, Dave Kleikamp <shaggy@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Bob Copeland <me@bobcopeland.com>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772059296; l=4861;
 i=tz2294@columbia.edu; s=20250528; h=from:subject:message-id;
 bh=wvO7UclkDfOFQdfC1evvQhRGdmzqdeL+WI5Bp8USXg0=;
 b=h4bisF4GoCaCSoqd37/ZfJNSaUymW/3u+9LXcqmZG0KnRoDbGHtk/4qRW+EsLRX8yAk3THDOa
 S2MblO1dCLPBna+BzWEdZKkpfva3GYEHQU94DPCiujOK2l2fhb+tpu1
X-Developer-Key: i=tz2294@columbia.edu; a=ed25519;
 pk=BIj5KdACscEOyAC0oIkeZqLB3L94fzBnDccEooxeM5Y=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDIxNiBTYWx0ZWRfX3ezpGT80K6Lj
 puS+S/vOPomSuCq3Zeg4n/ywRbaPXDGpQGaego2YItdXp2fVdbVsr4TrS8yA+6+R5O1HCmrKzkj
 mZmW60wwDBjXqYianV9w18uZzhCESyd/L0ke6/7mzWmp1VbW2CBk49+zYYV26mmyTcuvNXbOHHe
 Y4lsyl4KJtR5pXGeW8PwW7uqn64uXxfI/i9pjQOo/8+/VWwf1n0XK7Qy3tbSkL3DhgcUyn6bAPD
 x5nPo3yS39YQ9wPubeN3uNN8RtlZFQz0RsW+syYOLHRlVTIc3pE6D3UX9p2Yc65vflKh11WAoYo
 T6BM73ZoHOJtHSXHcRkucGHnZ+uBtGlxniJf4jVzqILjX3BYr2Eg0yDpzNirRtpIqXp1VAi0YPb
 ItFWzWyFvcJOpos8AA2FdR9kvDZ73PqXaHSsip6ZDbKINCYSzqZ2uEZ6Yn/7zVFuu09eFZdM2fZ
 MNa4rikS7balV5E0jNg==
X-Authority-Analysis: v=2.4 cv=cYjfb3DM c=1 sm=1 tr=0 ts=699f7aa3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=mD05b5UW6KhLIDvowZ5dSQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Da8U98TiO7q1upZEImrf:22 a=79PYxaXUQd1wl-QFWJnA:22
 a=wj6egcThClJy_xBgiekA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: HCks23-Hafq68ZN5CQuBHttitSTjk-tx
X-Proofpoint-ORIG-GUID: HCks23-Hafq68ZN5CQuBHttitSTjk-tx
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11712
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=10
 impostorscore=10 adultscore=0 bulkscore=10 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250216
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  folio_end_dropbehind() is called from folio_end_writeback(), 
 which can run in IRQ context through buffer_head completion. Previously,
 when folio_end_dropbehind() detected !in_task(), it skipped the invalidation
 entirely. This meant that folios marked for dropbehind via RWF_DONTCACHE
 would remain in the page cache after w [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vvNZm-0005ia-B1
Subject: [Jfs-discussion] [PATCH RFC v2 1/2] filemap: defer dropbehind
 invalidation from IRQ context
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
From: Tal Zussman via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Tal Zussman <tz2294@columbia.edu>
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-mm@kvack.org, linux-fsdevel@vger.kernel.org,
 Tal Zussman <tz2294@columbia.edu>, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FREEMAIL_TO(0.00)[kernel.dk,gmail.com,zeniv.linux.org.uk,kernel.org,suse.cz,samsung.com,sony.com,dubeyko.com,paragon-software.com,bobcopeland.com,infradead.org,linux-foundation.org];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:axboe@kernel.dk,m:aivazian.tigran@gmail.com,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:linkinjeon@kernel.org,m:sj1557.seo@samsung.com,m:yuezhang.mo@sony.com,m:shaggy@kernel.org,m:konishi.ryusuke@gmail.com,m:slava@dubeyko.com,m:almaz.alexandrovich@paragon-software.com,m:me@bobcopeland.com,m:willy@infradead.org,m:akpm@linux-foundation.org,m:jfs-discussion@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:ntfs3@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-mm@kvack.org,m:linux-fsdevel@vger.kernel.org,m:tz2294@columbia.edu,m:linux-ext4@vger.kernel.org,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,columbia.edu:s=pps01];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,columbia.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[columbia.edu:mid,columbia.edu:email,columbia.edu:replyto,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[tz2294@columbia.edu];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DB1A419E65F
X-Rspamd-Action: no action

folio_end_dropbehind() is called from folio_end_writeback(), which can
run in IRQ context through buffer_head completion.

Previously, when folio_end_dropbehind() detected !in_task(), it skipped
the invalidation entirely. This meant that folios marked for dropbehind
via RWF_DONTCACHE would remain in the page cache after writeback when
completed from IRQ context, defeating the purpose of using it.

Fix this by deferring the dropbehind invalidation to a work item.  When
folio_end_dropbehind() is called from IRQ context, the folio is added to
a global folio_batch and the work item is scheduled. The worker drains
the batch, locking each folio and calling filemap_end_dropbehind(), and
re-drains if new folios arrived while processing.

This unblocks enabling RWF_UNCACHED for block devices and other
buffer_head-based I/O.

Signed-off-by: Tal Zussman <tz2294@columbia.edu>
---
 mm/filemap.c | 84 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 79 insertions(+), 5 deletions(-)

diff --git a/mm/filemap.c b/mm/filemap.c
index ebd75684cb0a..6263f35c5d13 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -1085,6 +1085,8 @@ static const struct ctl_table filemap_sysctl_table[] = {
 	}
 };
 
+static void __init dropbehind_init(void);
+
 void __init pagecache_init(void)
 {
 	int i;
@@ -1092,6 +1094,7 @@ void __init pagecache_init(void)
 	for (i = 0; i < PAGE_WAIT_TABLE_SIZE; i++)
 		init_waitqueue_head(&folio_wait_table[i]);
 
+	dropbehind_init();
 	page_writeback_init();
 	register_sysctl_init("vm", filemap_sysctl_table);
 }
@@ -1613,23 +1616,94 @@ static void filemap_end_dropbehind(struct folio *folio)
  * If folio was marked as dropbehind, then pages should be dropped when writeback
  * completes. Do that now. If we fail, it's likely because of a big folio -
  * just reset dropbehind for that case and latter completions should invalidate.
+ *
+ * When called from IRQ context (e.g. buffer_head completion), we cannot lock
+ * the folio and invalidate. Defer to a workqueue so that callers like
+ * end_buffer_async_write() that complete in IRQ context still get their folios
+ * pruned.
  */
+static DEFINE_SPINLOCK(dropbehind_lock);
+static struct folio_batch dropbehind_fbatch;
+static struct work_struct dropbehind_work;
+
+static void dropbehind_work_fn(struct work_struct *w)
+{
+	struct folio_batch fbatch;
+
+again:
+	spin_lock_irq(&dropbehind_lock);
+	fbatch = dropbehind_fbatch;
+	folio_batch_reinit(&dropbehind_fbatch);
+	spin_unlock_irq(&dropbehind_lock);
+
+	for (int i = 0; i < folio_batch_count(&fbatch); i++) {
+		struct folio *folio = fbatch.folios[i];
+
+		if (folio_trylock(folio)) {
+			filemap_end_dropbehind(folio);
+			folio_unlock(folio);
+		}
+		folio_put(folio);
+	}
+
+	/* Drain folios that were added while we were processing. */
+	spin_lock_irq(&dropbehind_lock);
+	if (folio_batch_count(&dropbehind_fbatch)) {
+		spin_unlock_irq(&dropbehind_lock);
+		goto again;
+	}
+	spin_unlock_irq(&dropbehind_lock);
+}
+
+static void __init dropbehind_init(void)
+{
+	folio_batch_init(&dropbehind_fbatch);
+	INIT_WORK(&dropbehind_work, dropbehind_work_fn);
+}
+
+static void folio_end_dropbehind_irq(struct folio *folio)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&dropbehind_lock, flags);
+
+	/* If there is no space in the folio_batch, skip the invalidation. */
+	if (!folio_batch_space(&dropbehind_fbatch)) {
+		spin_unlock_irqrestore(&dropbehind_lock, flags);
+		return;
+	}
+
+	folio_get(folio);
+	folio_batch_add(&dropbehind_fbatch, folio);
+	spin_unlock_irqrestore(&dropbehind_lock, flags);
+
+	schedule_work(&dropbehind_work);
+}
+
 void folio_end_dropbehind(struct folio *folio)
 {
 	if (!folio_test_dropbehind(folio))
 		return;
 
 	/*
-	 * Hitting !in_task() should not happen off RWF_DONTCACHE writeback,
-	 * but can happen if normal writeback just happens to find dirty folios
-	 * that were created as part of uncached writeback, and that writeback
-	 * would otherwise not need non-IRQ handling. Just skip the
-	 * invalidation in that case.
+	 * Hitting !in_task() can happen for IO completed from IRQ contexts or
+	 * if normal writeback just happens to find dirty folios that were
+	 * created as part of uncached writeback, and that writeback would
+	 * otherwise not need non-IRQ handling.
 	 */
 	if (in_task() && folio_trylock(folio)) {
 		filemap_end_dropbehind(folio);
 		folio_unlock(folio);
+		return;
 	}
+
+	/*
+	 * In IRQ context we cannot lock the folio or call into the
+	 * invalidation path. Defer to a workqueue. This happens for
+	 * buffer_head-based writeback which runs from bio IRQ context.
+	 */
+	if (!in_task())
+		folio_end_dropbehind_irq(folio);
 }
 EXPORT_SYMBOL_GPL(folio_end_dropbehind);
 

-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
