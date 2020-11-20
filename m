Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C3B2BAC53
	for <lists+jfs-discussion@lfdr.de>; Fri, 20 Nov 2020 16:02:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kg7uy-0001Z4-US; Fri, 20 Nov 2020 15:01:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1kg7ux-0001Yi-KB
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 15:01:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QwpstCPsXlBXDe+rIaz9sOJvfwScNHisu2+dNaCkmRo=; b=HwFAQrQv+RhLq+gr9/MfGiJXEQ
 35/v0kNSlw0hAtnAJZcIVpfx/iiac4LxAZE/SqgOpmKl9TGNvwfpDYdrJnIvSW9aw/bLXJcegX5W4
 nuHlifY0gKND77nW4qS0w6KS2iaDlc+ZrQ0TZrFT8vJbU62QN+mu2BLRevpf9be8iIH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QwpstCPsXlBXDe+rIaz9sOJvfwScNHisu2+dNaCkmRo=; b=Mw/5wCJo7mr4/oGCAeoJ9O2Kg6
 PYAPn3Tuse+0c+6qd6TlKu8/xyhFfE3OTP1XK2wcqJBNJF7+QbR9QLRH04XHIDKq9qxiyEC8g/d2d
 thvp5PFl9ShquMxYSJzZZuo31wT8KPlYjTRUB3dLgwhx4QV+BAJ5IcpxiOXVUQsFybmE=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kg7uv-00AbZQ-7y
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 15:01:43 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AKF0JOP124812;
 Fri, 20 Nov 2020 15:01:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=QwpstCPsXlBXDe+rIaz9sOJvfwScNHisu2+dNaCkmRo=;
 b=M1xNjVT5k1R0N53zhuDAJg6EKpR8wM+JIeDx0Z/Wifp8ePGv7TL4mIORGIiQsh+4H64b
 7RIuU1QQPK8n35DgkTnx5gU4RfiduhtIntSWZMWlDfYyDYDSnrpQCwXvDqOxlHBMyEQG
 +b6l3/lLtNn+pHuFSu0xEWLfqQqGGr70l5K5fz3RfFM5jxLr7FxqnO5wd3ue7IPUf2hb
 6hfBQkhVe/YCrKyxkLjJXlMRShYS9FbkuGlsNGpryk4RYKVbif+cih2ElGR66P72dRQ6
 iKdyYSd7Tr2uenqHN7T0pjLAqOg4lPJMI9gUcDgYGyyFQUbJlxUALIuu7xnQQP7NybSO xA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 34t76mb2k8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Nov 2020 15:01:31 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AKEtksW036552;
 Fri, 20 Nov 2020 14:59:31 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 34uspxr969-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Nov 2020 14:59:31 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0AKExUl3014078;
 Fri, 20 Nov 2020 14:59:30 GMT
Received: from [192.168.0.190] (/68.201.65.98)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 20 Nov 2020 06:59:30 -0800
To: butt3rflyh4ck <butterflyhuangxx@gmail.com>
References: <CAFcO6XN=cd=_K_2AY9OL7f+HWsazY-nJ81Ufrw4azvkjj-Mpng@mail.gmail.com>
 <e8c8ef27-1f09-40b5-e5e4-facfcc9956dd@oracle.com>
 <CAFcO6XMhrhJXWjRymKUWgFUov6OV7fTk-Nu9Tq=kOyPTMRnTug@mail.gmail.com>
 <298485e2-01de-048d-5515-44ac254167e4@oracle.com>
 <CAFcO6XOvx2W1EvN7PORomgYj4U7kcyzjBC=OiQp9bfRZ33gBMg@mail.gmail.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Autocrypt: addr=dave.kleikamp@oracle.com; prefer-encrypt=mutual; keydata=
 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
 rnNNL3zBkwD3nWcTxFnX
Message-ID: <225bea89-73ed-5227-3ca1-d74fc86e986f@oracle.com>
Date: Fri, 20 Nov 2020 08:59:29 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAFcO6XOvx2W1EvN7PORomgYj4U7kcyzjBC=OiQp9bfRZ33gBMg@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9810
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011200103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9810
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 mlxscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011200103
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg7uv-00AbZQ-7y
Subject: Re: [Jfs-discussion] UBSAN: array-index-out-of-bounds in dbAdjTree
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
Cc: jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 11/20/20 3:52 AM, butt3rflyh4ck wrote:
> You are welcome and have you submitted the patch to linux upstream ?
> If you have no time do that and I can do it.

Yes, it's in linux-next now. I'll push it to upstream in the v5.11 window.

Shaggy

> 
> Regard,
>  butt3rflyh4ck.
> 
> On Sun, Nov 15, 2020 at 12:17 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>>
>> Thanks for reporting and testing this!
>>
>> Shaggy
>>
>> On 11/14/20 7:55 AM, butt3rflyh4ck wrote:
>>> Yes, I have tested the patch, it seem to fix the problem.
>>>
>>> Regard,
>>>  butt3rflyh4ck.
>>>
>>> On Sat, Nov 14, 2020 at 5:16 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>>>>
>>>> On 10/8/20 12:00 PM, butt3rflyh4ck wrote:
>>>>> I report a array-index-out-of-bounds bug (in linux-5.9.0-rc6) found by
>>>>> kernel fuzz.
>>>>>
>>>>> kernel config: https://github.com/butterflyhack/syzkaller-fuzz/blob/master/v5.9.0-rc6-config
>>>>>
>>>>> and can reproduce.
>>>>>
>>>>> the dmtree_t is that
>>>>> typedef union dmtree {
>>>>> struct dmaptree t1;
>>>>> struct dmapctl t2;
>>>>> } dmtree_t;
>>>>>
>>>>> the dmaptree is that
>>>>> struct dmaptree {
>>>>> __le32 nleafs; /* 4: number of tree leafs */
>>>>> __le32 l2nleafs; /* 4: l2 number of tree leafs */
>>>>> __le32 leafidx; /* 4: index of first tree leaf */
>>>>> __le32 height; /* 4: height of the tree */
>>>>> s8 budmin; /* 1: min l2 tree leaf value to combine */
>>>>> s8 stree[TREESIZE]; /* TREESIZE: tree */
>>>>> u8 pad[2]; /* 2: pad to word boundary */
>>>>> };
>>>>> the TREESIZE is totally 341, but the leafidx type is __le32.
>>>>
>>>> Does this patch fix the problem?
>>>>
>>>> jfs: Fix array index bounds check in dbAdjTree
>>>>
>>>> Bounds checking tools can flag a bug in dbAdjTree() for an array index
>>>> out of bounds in dmt_stree. Since dmt_stree can refer to the stree in
>>>> both structures dmaptree and dmapctl, use the larger array to eliminate
>>>> the false positive.
>>>>
>>>> Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
>>>> ---
>>>>  fs/jfs/jfs_dmap.h | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/fs/jfs/jfs_dmap.h b/fs/jfs/jfs_dmap.h
>>>> index 29891fad3f09..aa03a904d5ab 100644
>>>> --- a/fs/jfs/jfs_dmap.h
>>>> +++ b/fs/jfs/jfs_dmap.h
>>>> @@ -183,7 +183,7 @@ typedef union dmtree {
>>>>  #define        dmt_leafidx     t1.leafidx
>>>>  #define        dmt_height      t1.height
>>>>  #define        dmt_budmin      t1.budmin
>>>> -#define        dmt_stree       t1.stree
>>>> +#define        dmt_stree       t2.stree
>>>>
>>>>  /*
>>>>   *     on-disk aggregate disk allocation map descriptor.
>>>> --
>>>> 2.29.2
>>>>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
